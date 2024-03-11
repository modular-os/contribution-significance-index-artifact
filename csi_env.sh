docker run --rm -it -v $(pwd):/workspace -w /workspace ghcr.io/modular-os/contribution-significance-index:$(cat contribution-significance-index/pyproject.toml | grep -oP 'version = "\K[^"]+') bash
