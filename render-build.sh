#!/usr/bin/env bash
set -euo pipefail

HUGO_VERSION="0.151.0"
HUGO_BIN_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/hugo-bin"
HUGO_PATH="$HUGO_BIN_DIR/hugo"

echo "Render build started: $(date -u +%Y-%m-%dT%H:%M:%SZ)"

mkdir -p "$HUGO_BIN_DIR"

if [[ -x "$HUGO_PATH" ]]; then
  echo "...Using cached Hugo at $HUGO_PATH"
else
  echo "...Downloading Hugo Extended $HUGO_VERSION"
  tmpdir=$(mktemp -d)
  pushd "$tmpdir" >/dev/null
  archive="hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz"
  url="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${archive}"
  echo "Downloading $url"
  if command -v curl >/dev/null 2>&1; then
    curl -fsSLO "$url"
  elif command -v wget >/dev/null 2>&1; then
    wget "$url"
  else
    echo "Error: neither curl nor wget is available to download Hugo" >&2
    exit 1
  fi
  tar -xzf "$archive"
  if [[ -f ./hugo ]]; then
    mv ./hugo "$HUGO_PATH"
    chmod +x "$HUGO_PATH"
    echo "...Hugo installed to $HUGO_PATH"
  else
    echo "Error: Hugo binary not found in archive" >&2
    popd >/dev/null
    rm -rf "$tmpdir"
    exit 1
  fi
  popd >/dev/null
  rm -rf "$tmpdir"
fi

echo "Hugo version: $($HUGO_PATH version)"

# Make sure npm project setup script exists and run it if present
if [[ -f package.json ]]; then
  if npm run | grep -q "project-setup"; then
    echo "Running npm project-setup"
    npm run project-setup
  fi

  echo "Installing npm dependencies"
  npm install --no-audit --no-fund

  if npm run | grep -q "build"; then
    echo "Running npm build"
    npm run build
  fi
else
  echo "No package.json found; skipping npm steps"
fi

# Run Hugo to build the site (garbage collect and minify)
echo "Running Hugo --gc --minify"
"$HUGO_PATH" --gc --minify

echo "Render build finished: $(date -u +%Y-%m-%dT%H:%M:%SZ)"

exit 0