#!/usr/bin/env bash

set -eu

CYAN='\033[0;36m'
NC='\033[0m'

__exec() {
    local cmd=${1:0}
    shift
    echo -e "${CYAN} > $cmd $@${NC}"
    $cmd $@
}

rm -r artifacts/
rm -r Example/obj/
rm -r Source/GreetingTasks/obj/

__exec dotnet restore ./Source/GreetingTasks/
__exec dotnet pack -c Release ./Source/GreetingTasks/
__exec dotnet restore ./Example/
__exec dotnet msbuild /nologo '/t:Greet;Thank' ./Example/
