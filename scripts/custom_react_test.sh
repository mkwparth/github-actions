#!/usr/bin/env bash

echo "Running custom React CI checks..."

TARGET_DIR="src/src"

if grep -R "console.log" "$TARGET_DIR"; then
  echo "console.log found in React code"
  exit 1
fi

echo "Custom React checks passed"
exit 0
