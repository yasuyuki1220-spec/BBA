#!/usr/bin/env bash
# CrazyGames などへの投稿用 zip を dist/ に作る（three.js と PeerJS を同梱して CDN 依存をなくす）
set -euo pipefail
cd "$(dirname "$0")"
rm -rf dist && mkdir -p dist/game
tmp=$(mktemp -d)
curl -sSL https://registry.npmjs.org/three/-/three-0.128.0.tgz | tar xz -C "$tmp"
cp "$tmp/package/build/three.min.js" dist/game/three.min.js
rm -rf "$tmp/package"
curl -sSL https://registry.npmjs.org/peerjs/-/peerjs-1.5.4.tgz | tar xz -C "$tmp"
cp "$tmp/package/dist/peerjs.min.js" dist/game/peerjs.min.js
sed -e 's#https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js#three.min.js#' \
    -e 's#https://unpkg.com/peerjs@1.5.4/dist/peerjs.min.js#peerjs.min.js#' index.html > dist/game/index.html
(cd dist/game && zip -qr ../town-smashers.zip .)
rm -rf "$tmp"
echo "built dist/town-smashers.zip"
