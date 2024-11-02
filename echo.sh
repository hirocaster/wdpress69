echo "Adding changes..."
git add .
echo "Checking status..."
git status
echo "Committing changes..."
git commit -m "$(date '+%Y%m%d')" || echo "Commit failed"
echo "Pushing to remote..."
git push origin work || echo "Push failed"
echo "Script execution completed."