# Daily Backup Automation with PowerShell

This PowerShell script automates the process of backing up files from one directory to another. It creates a timestamped folder for each backup and stores the files, while also cleaning up old backups that are older than 7 days.

## How It Works

1. **Define Source and Destination**: The script copies all files from the source directory to a new backup folder in the destination directory. The backup folder is named with the current timestamp.
2. **Log Backup**: The backup time is logged in a text file for record-keeping.
3. **Cleanup Old Backups**: It automatically deletes backups older than 7 days to save storage space.

## Usage

1. Open PowerShell and modify the script to define the source and destination paths:
   ```powershell
   $sourcePath = "C:\\Users\\YourUser\\Documents\\ImportantFiles"
   $destinationPath = "D:\\Backup\\DocumentsBackup"
