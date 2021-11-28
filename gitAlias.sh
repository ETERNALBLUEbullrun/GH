set -x
git config --global alias.cg 'config --global'
git cg init.defaultBranch 'main'
git cg alias.uncg 'cg --unset'
git cg alias.lol 'log --oneline --graph'
git cg alias.undoc 'commit -c ORIG_HEAD'
#git cg alias.undo 'reset HEAD~'
git cg alias.undo '!git reset HEAD~ && echo "\"git undoc\" for git commit -c ORIG_HEAD" && :'

