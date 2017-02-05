#!/usr/bin/env bash
CYAN='\033[0;36m'
NC='\033[0m'

__exec() {
    local cmd=$1
    shift
    echo -e "${CYAN} > $cmd $@${NC}"
    $cmd $@
}

__exec dotnet build compile.proj
__exec dotnet build Example
