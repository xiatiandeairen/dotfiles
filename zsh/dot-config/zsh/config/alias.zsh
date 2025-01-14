# bat
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
local default_fd_opts="-s -E venv -E .git -E node_modules -E '*.log' -E '*.bak' -E .vscode --strip-cwd-prefix --follow --hidden "
alias _fd='fd '"${default_fd_opts}"
alias fdf='_fd -t f'
alias fdd='_fd -t d'

# ack 
local default_ack_opts="-i --context=5 --color"
alias g='ack '"${default_ack_opts}"

# fzf
alias fzf_vim="fzf --bind 'enter:become(vim {+}),ctrl-e:become(emacs {})'"

# kitty
alias icat="kitten icat"

# git
alias gst='git status'
alias gco='git commit'
alias gad='git add'
alias gca='git commit --amend'
alias gsb='git switch'
alias gcb='git checkout -b'
alias glg='git log --oneline --decorate --graph'
alias grb='git rebase'
alias gmb='git merge'
alias gdw='git diff'
alias gdc='git diff --cached'
alias gpl='git pull --autostash'
alias gph='git push'

# vim
alias vimrc="vim ${MYVIMRC}"
alias vimdir="vim ${MYVIMDIR}"

# zsh
alias zshenv="vim ${HOME}/.zshenv"
alias zshpath="vim ${ZDOTDIR}/path.zsh"
alias zshrc="vim ${ZDOTDIR}/.zshrc"

# aria2
alias aria2c="aria2c --conf-path=${DOTFILES}/aria2/aria2.conf"

# custom
alias d='dirs -v'
for index ({1..5}) alias "$index"="cd +${index}"; unset index