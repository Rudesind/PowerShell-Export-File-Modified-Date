<#
    Script : Export_Date_Modified.ps1
    Updated: 11/12/2018
    Author : Zach Nybo <zach.nybo@gmail.com>
    Version: 1.0

    Summary:
    This script exports the "LastWriteTime" for all files in a directory and
    exports the information to a CSV.
#>

Param(

    [ValidateNotNullOrEmpty()]
    [ValidateScript({(Test-Path $_)})]
    [Parameter(ValueFromPipeline=$True, Mandatory=$True)]
    [string] $Folder,

    [ValidateNotNullOrEmpty()]
    [Parameter(Mandatory=$True)]
    [string] $CSVExport

)

# Error Codes
#
New-Variable EXPORT_FAILED -option Constant -value 4000

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

# Export to CSV
#
try {

    # Export all files in $Folder to CSV
    #
    Get-ChildItem -Path $Folder -Recurse -File | Select-Object Name, FullName, LastWriteTime | Export-CSV $CSVExport -NoTypeInformation
    
} catch {
    $errorMsg = "Error, could not export directory contents to CSV: " + $Error[0]
    Write-Host $errorMsg
    Write-Host "Exiting with error code: $EXPORT_FAILED"
    exit $EXPORT_FAILED
}