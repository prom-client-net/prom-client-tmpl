#!/usr/bin/env bash

set -eu -o pipefail

rm renovate.json
rm .github/sync-config.yml
rm .github/workflows/sync.yml

proj_name=${PWD##*/}
sed -i "s/prom-client-tmpl/${proj_name}/g" README.md
sed -i "s/sync/ci/g" README.md
sed -i "/init.sh/d" README.md

dotnet new classlib --framework "netstandard2.0" -o src -n "Prometheus.Client.${proj_name^}"
dotnet new xunit --framework "net8.0" -o tests -n "Prometheus.Client.${proj_name^}.Tests"

rm init.sh

git add .
