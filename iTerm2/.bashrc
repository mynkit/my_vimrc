# エイリアスの設定
# ls（カラー表示）
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'
alias ssh=/usr/local/bin/sshColor

# gitのbranch名を常に表示(以下のpathにファイルがある場合のみ)
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

# プロンプトの設定
# PS1='\[\e[34m\]\w \[\e[37m\]\$\[\e[0m\] ' #もし上のpathがなければこっちを使う
# PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ ' #EC2などのサーバ上ではこちらを使う(サーバ名が表示される)
PS1='\[\e[34m\]\w\[\e[37m\]$(__git_ps1)\n\[\033[00m\]$ '
