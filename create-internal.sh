#!/usr/bin/env bash

set -euo pipefail

source universal.sh

$RSPMCLI create source \
    --name=internal \
    --type=local

$RSPMCLI create repo \
    --name=internal \
    --description="Internal CRAN-like repo"

$RSPMCLI subscribe \
    --source=internal \
    --repo=internal
