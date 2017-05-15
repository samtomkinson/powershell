$sites = Import-Csv .\BL_Sites.csv | Select-Object -Property "path", "applicationPool"
$csvAppPools = Import-Csv .\BL_AppPools.csv | Where-Object {$sites.path -contains $_.name}

#Write-Output $csvSites
#Write-Output $csvAppPools
#Write-Output $sites
Write-Output $csvAppPools