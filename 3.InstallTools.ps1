param(
    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [string]$Region = 'eastus',

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [string]$ResourceGroup = 'deg-sitecore-sandbox',

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [string]$AksName = 'deg-sc101-xm1',

    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [string]$AcrName = 'degreg'
)

$current = Get-Location
# install helm
 Write-Host "--- install Helm ---" -ForegroundColor Blue
choco install kubernetes-helm
Write-Host "--- Complete Helm install ---" -ForegroundColor Green

# installing Kubectl 
Write-Host "--- Install kubectl ---" -ForegroundColor Blue
choco install kubernetes-cli
Write-Host "--- Complete kubectl ---" -ForegroundColor Green