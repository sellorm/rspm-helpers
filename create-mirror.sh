#!/usr/bin/env bash

set -euo pipefail

source universal.sh

$RSPMCLI create repo \
    --name=cran-mirror \
    --description="CRAN Mirror"

$RSPMCLI subscribe \
    --source=cran \
    --repo=cran-mirror
    
$RSPMCLI sync
