parse_git_branch() {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
     }

    
    export PS1="\[\033[01;34m\] \w\[\033[31m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] "
