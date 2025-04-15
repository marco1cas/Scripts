# Automatic file organizer

$file = "C:\users\usuario17\Documents\prove\file2"

Get-ChildItem -Path $file -File | ForEach-Object {
    $extension = $_.Extension.TrimStart(".")
    $subFolder = Join-Path -Path $file -ChildPath $extension

    if (-not (Test-Path -Path $subFolder)) {
        New-Item -Path $subFolder -ItemType Directory | Out-Null
    }
    Move-Item -Path $_.FullName -Destination $subFolder
}

