### Go
export GOPATH=$HOME/go
export GOROOT=/usr/local/go

### PATH
export PATH=$PATH:$HOME/bin:/Applications/CMake.app/Contents/bin:~/Library/Python/2.7/bin:$GOPATH/bin

### Prompt
function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \(\1\)/'
}

PS1="   ∂ \W\$(git_branch): "
PS2="    | "

### Remove duplicates from history
export HISTCONTROL=ignoredups

### Ansible
export ANSIBLE_VAULT_PASSWORD_FILE="~/.vault_pass.txt"
