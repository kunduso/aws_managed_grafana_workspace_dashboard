# This script checks and installs aws.tools.installer and aws.tools.common modules 
# and any other module specfied in the $RequiredModules list

# Create a list of all modules already installed and 
# then identify if the required modules are already installed. Read Idempotent.
$ListofModulesInstalled = (Get-InstalledModule).Name
# These are the modules being installed:
# https://www.powershellgallery.com/packages/AWS.Tools.Installer
# https://www.powershellgallery.com/packages/AWS.Tools.Common
# Populate below list with modules based on your requirement
# More modules could be found at: https://www.powershellgallery.com/packages?q=AWS.Tools
$RequiredModules = @(
                        "AWS.Tools.Installer",
                        "AWS.Tools.Common",
                        "AWS.Tools.ManagedGrafana"
                    )

foreach ($module in $RequiredModules)
{
    Write-Host "Checking if $module is installed on this instance."
    if ($ListofModulesInstalled -contains "$module")
    { 
        Write-Host "$module module exists."
    } else { 
        Write-Host "$module module does not exist and needs to be installed."
        Install-Module -Name $module -Force
        Write-Host "$module was installed successfully."
    }
}