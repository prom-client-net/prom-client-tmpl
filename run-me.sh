#!/bin/sh

rm src/.gitkeep
rm tests/.gitkeep

proj_name=${PWD##*/}
sed -i "s/prom-tmpl/${proj_name}/g" README.md

rm run-me.sh
