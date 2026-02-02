#!/usr/bin/env bash

echo "Running custom React CI checks..."

TARGET_DIR="src/src"

grep -R -n -H "console.log" "$TARGET_DIR" \
  --exclude-dir=node_modules \
  --exclude="*.test.*" \
  --exclude="*.spec.*" \
  && {
    echo "❌ console.log found in React source code"
    exit 1
  }

echo "✅ Custom React checks passed"
exit 0
