# bat
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

# broot
alias br=broot

# tmux
alias tmux="tmux -f ${TMUX_CONFIG_PATH}"

# eza
local default_opts="--git --icons --group-directories-first --sort=name --header"
# set aliases using options from env var if available
alias e='eza '"${EZA_CMD_OPTS:-$default_opts}" # base implementation
alias el='e -lh --no-user' # mid form -user/group/hidden
alias et='el --tree -L 3' # mid form tree listing

# custom
alias delete-dsstore='find . -name ".DS_Store" -exec rm -f {} \;'
alias d='dirs -v'
for index ({1..5}) alias "$index"="cd +${index}"; unset index