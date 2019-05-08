
Write-Host
Write-Host "==> set http_proxy, https_proxy and all_proxy environment variables"
Remove-Item Env:\http_proxy
Remove-Item Env:\https_proxy
Remove-Item Env:\all_proxy

### Modify a user environment variable ###
[Environment]::SetEnvironmentVariable("http_proxy", $null, [System.EnvironmentVariableTarget]::User)
[Environment]::SetEnvironmentVariable("https_proxy", $null, [System.EnvironmentVariableTarget]::User)
[Environment]::SetEnvironmentVariable("all_proxy", $null, [System.EnvironmentVariableTarget]::User)

Write-Host
Write-Host ".ok"

Write-Host
