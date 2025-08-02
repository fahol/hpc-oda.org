#!/bin/bash

set -e

HUGO_VERSION="0.145.0"

# Get the absolute path of the script directory
get_script_dir() {
    if command -v realpath >/dev/null 2>&1; then
        # Use realpath if available (Linux)
        dirname "$(realpath "$0")"
    else
        # Fallback for macOS where realpath might not be available
        (cd "$(dirname "$0")" && pwd)
    fi
}

SCRIPT_DIR=$(get_script_dir)
LOCAL_DIR="$SCRIPT_DIR/.local"
HUGO_BINARY="$LOCAL_DIR/hugo"

detect_os_arch() {
    OS=$(uname -s)
    ARCH=$(uname -m)
    
    case "$OS" in
        Darwin*)
            OS_NAME="darwin"
            ARCH_NAME="universal"
            ;;
        Linux*)
            OS_NAME="linux"
            case "$ARCH" in
                x86_64|amd64)
                    ARCH_NAME="amd64"
                    ;;
                arm64|aarch64)
                    ARCH_NAME="arm64"
                    ;;
                *)
                    echo "Unsupported Linux architecture: $ARCH"
                    echo "Only x86_64 and arm64 are supported"
                    exit 1
                    ;;
            esac
            ;;
        *)
            echo "Unsupported OS: $OS"
            echo "Only macOS (Darwin) and Linux are supported"
            exit 1
            ;;
    esac
}

download_hugo() {
    detect_os_arch
    
    HUGO_ARCHIVE="hugo_extended_${HUGO_VERSION}_${OS_NAME}-${ARCH_NAME}.tar.gz"
    DOWNLOAD_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_ARCHIVE}"
    
    echo "Downloading Hugo v${HUGO_VERSION} for ${OS_NAME}-${ARCH_NAME}..."
    
    mkdir -p "$LOCAL_DIR"
    cd "$LOCAL_DIR"
    
    if command -v curl >/dev/null 2>&1; then
        curl -L -o "$HUGO_ARCHIVE" "$DOWNLOAD_URL"
    elif command -v wget >/dev/null 2>&1; then
        wget -O "$HUGO_ARCHIVE" "$DOWNLOAD_URL"
    else
        echo "Error: Neither curl nor wget is available for downloading"
        exit 1
    fi
    
    tar -xzf "$HUGO_ARCHIVE"
    rm "$HUGO_ARCHIVE"
    chmod +x hugo
    
    cd "$SCRIPT_DIR"
    echo "Hugo v${HUGO_VERSION} downloaded successfully"
}

ensure_hugo() {
    if [ ! -f "$HUGO_BINARY" ]; then
        download_hugo
    else
        CURRENT_VERSION=$("$HUGO_BINARY" version 2>/dev/null | grep -o 'v[0-9.]*' | head -1 | sed 's/v//' || echo "unknown")
        if [ "$CURRENT_VERSION" != "$HUGO_VERSION" ]; then
            echo "Hugo version mismatch (current: $CURRENT_VERSION, required: $HUGO_VERSION)"
            echo "Re-downloading Hugo..."
            rm -f "$HUGO_BINARY"
            download_hugo
        fi
    fi
}

ensure_hugo

exec "$HUGO_BINARY" "$@"