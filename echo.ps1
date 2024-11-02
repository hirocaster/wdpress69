Write-Output "Adding changes..."
git add .
if ($LASTEXITCODE -ne 0) {
    Write-Output "Failed to add changes"
    exit $LASTEXITCODE
}

Write-Output "Checking status..."
git status
if ($LASTEXITCODE -ne 0) {
    Write-Output "Failed to check status"
    exit $LASTEXITCODE
}

Write-Output "Committing changes..."
$commitMessage = (Get-Date).ToString("yyyyMMdd")
git commit -m $commitMessage
if ($LASTEXITCODE -ne 0) {
    Write-Output "Commit failed"
    exit $LASTEXITCODE
}

Write-Output "Pushing to remote..."
git push origin work
if ($LASTEXITCODE -ne 0) {
    Write-Output "Push failed"
    exit $LASTEXITCODE
}

Write-Output "Script execution completed."
