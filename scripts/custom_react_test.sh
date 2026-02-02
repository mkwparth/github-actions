#!/usr/bin/env bash

echo "Running custom React CI checks..."

TARGET_DIR="src/src"
FOUND=false

MATCHES=$(grep -R -n -H "console.log" "$TARGET_DIR" || true)

if [[ -n "$MATCHES" ]]; then
  echo "❌ console.log found in React code:"
  echo "----------------------------------"
  echo "$MATCHES"
  echo "----------------------------------"
  exit 1
fi

echo "✅ Custom React checks passed"
exit 0
