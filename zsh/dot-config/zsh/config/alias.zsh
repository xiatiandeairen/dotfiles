# bat
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

# broot
alias br=broot

# tmux
alias tmux="tmux -f ${TMUX_CONFIG_PATH}"

# custom
alias delete-dsstore='find . -name ".DS_Store" -exec rm -f {} \;'
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index