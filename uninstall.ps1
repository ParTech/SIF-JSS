# Make sure prerequisites for uninstall are present
. $PSScriptRoot\uninstall-prerequisites.ps1

# Bring parameters into scope
. $PSScriptRoot\parameters.ps1

$uninstallArgs = @{
    Path 				= Join-Path $configsRoot uninstall.json
    Prefix 				= $prefix
    SqlServer 			= $sqlServer
	SqlAdminUser		= $sqlServerAdminUser
	SqlAdminPassword	= $sqlServerAdminPassword
}

Install-SitecoreConfiguration @uninstallArgs