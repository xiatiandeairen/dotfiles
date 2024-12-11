# bat
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

# broot
alias br=broot

# tmux
alias tmux="tmux -f ${TMUX_CONFIG_PATH}"

# eza
local default_eza_opts="--git --icons --group-directories-first --sort=name --header"
alias e='eza '"${default_eza_opts}" # base implementation
alias el='e -lh --no-user' # mid form -user/group/hidden
alias et='el --tree -L 3' # mid form tree listing

# fd, -e / --extension: 查找特定扩展名的文件, -p / --path: 指定搜索的路径, -x / --exec: 对每个找到的文件执行命令
local default_fd_opts="-s -E .git -E node_module -E '*.log' -E '*.bak'"
alias _fd='fd '"${default_fd_opts}"
alias fdf='_fd -t f'
alias fdd='_fd -t d'

# custom
alias delete-dsstore='find . -name ".DS_Store" -exec rm -f {} \;'
alias d='dirs -v'
for index ({1..5}) alias "$index"="cd +${index}"; unset index