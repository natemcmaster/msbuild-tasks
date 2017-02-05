function exec($cmd) {
    write-host " > $cmd $args" -ForegroundColor cyan
    & $cmd @args
}

exec dotnet build compile.proj
exec dotnet build Example/