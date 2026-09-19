#!/bin/bash
DEST_HOST="${DEST_HOST:-jlay.us}"
DEST_DIR="${DEST_DIR:-/srv/jlay.us/}"
source venv/bin/activate && mkdocs build && rsync -avP ./site/ "$DEST_HOST":"$DEST_DIR"
