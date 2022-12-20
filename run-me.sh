#!/bin/sh

rm src/.gitkeep
rm tests/.gitkeep
rm .github/sync.yml
rm .github/workflows/sync.yml

proj_name=${PWD##*/}
sed -i "s/prom-tmpl/${proj_name}/g" README.md

rm run-me.sh
