$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
Write-Host ::group::Installing $env:folder_name to tool cache
if ( -not (Test-Path $env:RUNNER_TOOL_CACHE\$env:folder_name\ -PathType Container) ) {
    New-Item $env:RUNNER_TOOL_CACHE\$env:folder_name\ -ItemType Directory
}
Move-Item $env:RUNNER_TEMP\$env:folder_name\* $env:RUNNER_TOOL_CACHE\$env:folder_name\
Write-Host ::endgroup::