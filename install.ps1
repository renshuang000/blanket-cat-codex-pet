$ErrorActionPreference = "Stop"

$RepoDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$TargetDir = Join-Path $HOME ".codex\pets"
$PetTarget = Join-Path $TargetDir "blanket-cat"

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
Copy-Item -Recurse -Force -Path (Join-Path $RepoDir "pets\blanket-cat") -Destination $PetTarget

Write-Host "Installed Blanket Cat to $PetTarget"
Write-Host "Restart Codex and select Blanket Cat from the pet/avatar settings."
