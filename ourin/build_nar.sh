#!/bin/sh
# Ourin 用の NAR（zip）を作る。リポジトリ管理用のファイルは含めない。
set -eu
cd "$(dirname "$0")/.."
mkdir -p build
rm -f "build/yaya-ourin.nar"
zip -qr "build/yaya-ourin.nar" . -x '.git/*' 'build/*' 'ourin/*' '.github/*' '*.md' '.gitignore' '.DS_Store'
echo "build/yaya-ourin.nar"
