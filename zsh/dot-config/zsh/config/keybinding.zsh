# 按键名与快捷键表示的映射
# ["Ctrl+A"]='^A'
# ["Ctrl+B"]='^B'
# ["Ctrl+C"]='^C'
# ["Ctrl+D"]='^D'
# ["Ctrl+E"]='^E'
# ["Ctrl+F"]='^F'
# ["Ctrl+G"]='^G'
# ["Ctrl+H"]='^H'  # Backspace
# ["Ctrl+I"]='^I'  # Tab
# ["Ctrl+J"]='^J'  # Enter
# ["Ctrl+K"]='^K'
# ["Ctrl+L"]='^L'  # Clear
# ["Ctrl+M"]='^M'  # Enter
# ["Ctrl+N"]='^N'
# ["Ctrl+O"]='^O'
# ["Ctrl+P"]='^P'
# ["Ctrl+Q"]='^Q'
# ["Ctrl+R"]='^R'  # Reverse search
# ["Ctrl+S"]='^S'
# ["Ctrl+T"]='^T'
# ["Ctrl+U"]='^U'
# ["Ctrl+V"]='^V'
# ["Ctrl+W"]='^W'  # Kill word
# ["Ctrl+X"]='^X'
# ["Ctrl+Y"]='^Y'
# ["Ctrl+Z"]='^Z'  # Suspend

# ["Up Arrow"]='^[A'
# ["Down Arrow"]='^[B'
# ["Left Arrow"]='^[D'
# ["Right Arrow"]='^[C'
# ["Esc"]='^['
# ["Tab"]='^[I'
# ["Return"]='^[M'
# ["Delete"]='^[H'
# ["Insert"]='^[2~'
# ["Home"]='^[H'
# ["End"]='^[F'
# ["Page Up"]='^[5~'
# ["Page Down"]='^[6~'

# zsh surround
autoload -Uz surround
zle -N delete-surround  surround
zle -N add-surround     surround
zle -N change-surround  surround
bindkey -M vicmd cs change-surround
bindkey -M vicmd ds delete-surround
bindkey -M vicmd ys add-surround
bindkey -M visual S add-surround

# open tmux
bindkey -s '^b' '^Qtmux attach-session -t "$(tmux ls 2>/dev/null | tail -n 1 | cut -d: -f1)"^M'