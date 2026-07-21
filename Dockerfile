FROM python:3.12-slim AS builder

ENV PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /app

COPY requirements.txt ./
RUN python -m pip install -r requirements.txt

COPY mkdocs.yml ./
COPY docs/ ./docs/

RUN mkdocs build --strict --site-dir /build/site

FROM nginx:alpine AS runtime

RUN rm -rf /usr/share/nginx/html/*

COPY deployment/landing/ /usr/share/nginx/html/
COPY --from=builder /build/site/ /usr/share/nginx/html/docs/
COPY deployment/nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
    CMD wget -qO- http://127.0.0.1/healthz || exit 1
