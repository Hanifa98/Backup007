# Define the source and destination paths
$sourcePath = "C:\Users\YourUser\Documents\ImportantFiles"
$destinationPath = "D:\Backup\DocumentsBackup"

# Get the current date and time
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"

# Create a new folder in the destination with the current timestamp
$newBackupFolder = "$destinationPath\Backup_$timestamp"
New-Item -ItemType Directory -Path $newBackupFolder

# Copy all files from the source to the new backup folder
Copy-Item -Path "$sourcePath\*" -Destination $newBackupFolder -Recurse

# Optional: Write a log entry to a text file
$logPath = "D:\Backup\BackupLog.txt"
Add-Content -Path $logPath -Value "Backup created at $timestamp"

# Optional: Remove backups older than 7 days
$olderBackups = Get-ChildItem -Path $destinationPath | Where-Object { $_.CreationTime -lt (Get-Date).AddDays(-7) }
$olderBackups | Remove-Item -Recurse
