#!/usr/bin/env bash

set -x
set -euo pipefail

source universal.sh

$RSPMCLI create source \
    --name=curated \
    --type=curated-cran

$RSPMCLI create repo \
    --name=curated \
    --description="Highlights of CRAN"

$RSPMCLI subscribe \
    --source=curated \
    --repo=curated

$RSPMCLI add \
    --source=curated \
    --file-in=curated-list.txt \
    --include-suggests \
    --transaction-id=350
