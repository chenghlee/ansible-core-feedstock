#!/usr/bin/env bash
set -x -e

"$PYTHON" -m pip install --no-deps --ignore-installed -vv .

cd "$SP_DIR"
sed -i.bak "s@/usr/share/ansible@${PREFIX}/share/ansible@g" \
    ansible/config/base.yml
rm -f ansible/config/base.yml.bak
