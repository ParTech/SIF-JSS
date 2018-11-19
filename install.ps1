<#
    Install script for XM0 (CMS-only single instance) with JSS
#>
. $PSScriptRoot\ignore-ssl-error.ps1

# Bring parameters into scope
. $PSScriptRoot\parameters.ps1

# Install Sitecore
Install-SitecoreConfiguration @sitecoreSolr
Install-SitecoreConfiguration @sitecore

# Install JSS
Install-SitecoreConfiguration @jss
Install-SitecoreConfiguration @jssWebConfig