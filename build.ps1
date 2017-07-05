#!/usr/bin/env powershell
$ErrorActionPreference = 'Stop'

function exec($cmd) {
    write-host " > $cmd $args" -ForegroundColor cyan
    & $cmd @args
    if ($LASTEXITCODE -ne 0) {
        throw 'Command failed'
    }
}

Remove-Item artifacts/ -Recurse -ErrorAction Ignore
Remove-Item Source/GreetingTasks/obj/ -Recurse -ErrorAction Ignore
Remove-Item Example/obj/ -Recurse -ErrorAction Ignore

exec dotnet restore ./Source/GreetingTasks/
exec dotnet build ./Source/GreetingTasks/
exec dotnet restore ./Example/
exec dotnet msbuild /nologo '/t:Greet;Thank' ./Example/
