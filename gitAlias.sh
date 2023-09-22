set -x
git config --global alias.cg 'config --global'
git cg init.defaultBranch 'trunk'
git cg alias.uncg 'cg --unset'
git cg alias.lol 'log --oneline --graph'
git cg alias.undoc 'commit -c ORIG_HEAD'
git cg alias.undo '!git reset HEAD~ && echo "\"git undoc\" for git commit -c ORIG_HEAD" && :'
git cg alias.subs '!x(){ find . -name ".git" -type d | sed s/\\/\.git//g | xargs -P4 -I{} git --git-dir={}/.git --work-tree={} $1;};x'
set +x

