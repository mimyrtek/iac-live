#!/bin/sh

set -e

ROOT="."

echo "Creating folder structure under $ROOT ..."

# Directories
mkdir -p \
  "$ROOT/envs/dev/sandbox" \
  "$ROOT/envs/stg" \
  "$ROOT/envs/prd" \
  "$ROOT/modules"

# Files
touch \
  "$ROOT/README.md" \
  "$ROOT/envs/dev/sandbox/backend.tf" \
  "$ROOT/envs/dev/sandbox/providers.tf" \
  "$ROOT/envs/dev/sandbox/main.tf"

echo "✅ iac-live structure created successfully."
