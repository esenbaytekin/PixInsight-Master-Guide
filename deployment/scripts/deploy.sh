#!/usr/bin/env bash
set -Eeuo pipefail

readonly PROJECT_DIR="/srv/allsky"
readonly SERVICE_NAME="allsky-docs"
readonly HEALTH_TIMEOUT_SECONDS=120

log() {
  printf '[deploy] %s\n' "$*"
}

fail() {
  printf '[deploy] ERROR: %s\n' "$*" >&2
  exit 1
}

[[ "$(pwd -P)" == "$PROJECT_DIR" ]] || fail "Bu script yalnız $PROJECT_DIR içinden çalıştırılabilir."
[[ -d .git ]] || fail "Git checkout bulunamadı."

origin_url="$(git remote get-url origin)"
case "$origin_url" in
  *esenbaytekin/PixInsight-Master-Guide | *esenbaytekin/PixInsight-Master-Guide.git)
    ;;
  *)
    fail "origin beklenen PixInsight-Master-Guide repository'si değil."
    ;;
esac

current_branch="$(git branch --show-current)"
[[ "$current_branch" == "main" ]] || fail "Deployment checkout main branch üzerinde olmalıdır."

log "origin/main güncelleniyor."
git fetch --prune origin main

[[ -f .env ]] || log "Uyarı: .env yok; Compose varsayılan certificate resolver değerini kullanacak."

log "Dedicated deployment checkout origin/main durumuna getiriliyor."
git reset --hard origin/main

log "Container image oluşturuluyor."
doc_version="$(git describe --tags --abbrev=0 2>/dev/null || printf 'unversioned')"
doc_commit="$(git rev-parse --short=7 HEAD)"
log "Dokümantasyon kimliği: ${doc_version} · ${doc_commit}"
docker compose build \
  --pull \
  --build-arg "DOC_VERSION=${doc_version}" \
  --build-arg "DOC_COMMIT=${doc_commit}"

log "Servis güncelleniyor."
docker compose up -d --remove-orphans

container_id="$(docker compose ps -q "$SERVICE_NAME")"
[[ -n "$container_id" ]] || fail "$SERVICE_NAME container kimliği alınamadı."

log "Container health bekleniyor."
deadline=$((SECONDS + HEALTH_TIMEOUT_SECONDS))
while (( SECONDS < deadline )); do
  health="$(docker inspect --format '{{if .State.Health}}{{.State.Health.Status}}{{else}}missing{{end}}' "$container_id")"
  case "$health" in
    healthy)
      log "Container healthy."
      break
      ;;
    unhealthy)
      docker compose ps
      fail "Container unhealthy durumuna geçti."
      ;;
  esac
  sleep 2
done

health="$(docker inspect --format '{{if .State.Health}}{{.State.Health.Status}}{{else}}missing{{end}}' "$container_id")"
[[ "$health" == "healthy" ]] || fail "Health kontrolü ${HEALTH_TIMEOUT_SECONDS} saniye içinde tamamlanmadı."

docker compose ps

log "Dangling image katmanları temizleniyor."
docker image prune --force --filter dangling=true

log "Deployment tamamlandı."
