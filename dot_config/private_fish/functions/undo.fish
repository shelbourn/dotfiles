function undo --description 'Reverts the latest git commit and preserves changes'
git reset --soft HEAD~1
echo "Latest commit reverted"
end
