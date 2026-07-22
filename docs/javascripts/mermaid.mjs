import mermaid from "https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.esm.min.mjs";

mermaid.initialize({
  startOnLoad: false,
});

// Material for MkDocs detects this runtime and owns rendering, theme changes,
// and re-rendering after instant navigation.
window.mermaid = mermaid;
