alias ls='ls -ahlG'
alias gs='git status'
alias gb='git branch'
alias gl='git log --pretty=format:"%Cred%h%Creset %C(bold blue)<%an>%Creset - %s %C(bold blue)(%cr)%Creset" --abbrev-commit --date=short'
alias gf='git fetch --prune'
alias gr='git rebase $(git symbolic-ref refs/remotes/origin/HEAD)'
alias ge='git commit --allow-empty -m "Empty"'

alias fix_git_default_branch='git remote set-head origin --auto'

export LSCOLORS='Gxfxcxdxbxegedabagacad'

source ~/.bash.local
