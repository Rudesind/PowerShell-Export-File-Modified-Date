<#
    Script : Export_Date_Modified.ps1
    Updated: 11/12/2018
    Author : Zach Nybo <zach.nybo@gmail.com>
    Version: 1.0

    Summary:
    This script exports the "Date modified" for all files in a directory and
    exports the information to a CSV.
#>

Param(

    [ValidateNotNullOrEmpty()]
    [ValidateScript( {(Test-Path $_)})]
    [Parameter(ValueFromPipeline = $True, Mandatory = $True)]
    [string] $Folder

)

# Error Codes
#

# Initialize
#
try {

    # Friendly error message
    #
    [string] $errorMsg = [string]::Empty

}
catch {
    throw "Critical Error: Could not initialize the function"
    return -1
}