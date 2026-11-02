#!/usr/bin/env bash
# CrazyGames などへの投稿用 zip を dist/ に作る（three.js を同梱して CDN 依存をなくす）
set -euo pipefail
cd "$(dirname "$0")"
rm -rf dist && mkdir -p dist/game
tmp=$(mktemp -d)
curl -sSL https://registry.npmjs.org/three/-/three-0.128.0.tgz | tar xz -C "$tmp"
cp "$tmp/package/build/three.min.js" dist/game/three.min.js
sed 's#https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js#three.min.js#' index.html > dist/game/index.html
(cd dist/game && zip -qr ../shinobiashi-babaa.zip .)
rm -rf "$tmp"
echo "built dist/shinobiashi-babaa.zip"
