# PowerShell-Export-File-Modified-Date

---

This script exports the "LastWriteTime" for all the files found in a directory to CSV format.

This script is intended to run in a live console window and doesn't support any silent logging.

## Syntax

```powershell
Export_Date_Modified.ps1 [-Folder] <folder> [CSVExport] <csv_file>
```

## Examples

```powershell
Export_Date_Modified.ps1 C:\TestFolder C:\Users\user\Desktop\test.csv
```

## Error Codes

(-1): The script could not be initialized.
EXPORT_FAILED (4000): Could not export the files to CSV

## References

[CSV Exprt](https://social.technet.microsoft.com/Forums/scriptcenter/en-US/97ffcfca-cf5a-4d94-b62c-9c45504a6132/how-do-i-write-a-powershell-script-to-export-directory-listings?forum=ITCG)

[Process All Directory Files](https://stackoverflow.com/questions/38063424/powershell-move-all-files-from-folders-and-subfolders-into-single-folder)
