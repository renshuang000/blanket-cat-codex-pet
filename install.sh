#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target_dir="${HOME}/.codex/pets"

mkdir -p "${target_dir}"
cp -R "${repo_dir}/pets/blanket-cat" "${target_dir}/"

echo "Installed Blanket Cat to ${target_dir}/blanket-cat"
echo "Restart Codex and select Blanket Cat from the pet/avatar settings."
