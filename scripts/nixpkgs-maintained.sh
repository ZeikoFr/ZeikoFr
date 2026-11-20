#!/usr/bin/env bash
# Rewrite the README section between the nixpkgs markers with the packages
# whose meta.maintainers include the given GitHub user id.
# Usage: nixpkgs-maintained.sh <github-id> <readme>
set -euo pipefail

github_id=$1
readme=$2
channel=${NIXPKGS_CHANNEL:-nixos-unstable}
search_channel=${SEARCH_CHANNEL:-unstable}

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

curl -sSfL -o "$tmp/packages.json.br" "https://channels.nixos.org/$channel/packages.json.br"
brotli -dc "$tmp/packages.json.br" > "$tmp/packages.json"

jq -r --argjson id "$github_id" --arg ch "$search_channel" '
  .packages
  | to_entries
  | map(select(any(.value.meta.maintainers[]?; .githubId == $id)))
  | sort_by(.key)
  | .[]
  | "- [`\(.key)`](https://search.nixos.org/packages?channel=\($ch)&show=\(.key | @uri)&query=\(.key | @uri)) \(.value.version)"
    + (if .value.meta.description then ": \(.value.meta.description)" else "" end)
' "$tmp/packages.json" > "$tmp/list.md"

if [ ! -s "$tmp/list.md" ]; then
  echo "No package found for githubId $github_id, README left untouched" >&2
  exit 0
fi

awk -v list="$tmp/list.md" '
  /<!-- nixpkgs:start -->/ { print; while ((getline line < list) > 0) print line; skip = 1; next }
  /<!-- nixpkgs:end -->/ { skip = 0 }
  !skip
' "$readme" > "$tmp/README.md"
cat "$tmp/README.md" > "$readme"
