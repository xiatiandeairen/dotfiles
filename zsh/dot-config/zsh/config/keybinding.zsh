# 按键名与快捷键表示的映射
declare -A keymap=(
  ["Ctrl+A"]='^A'
  ["Ctrl+B"]='^B'
  ["Ctrl+C"]='^C'
  ["Ctrl+D"]='^D'
  ["Ctrl+E"]='^E'
  ["Ctrl+F"]='^F'
  ["Ctrl+G"]='^G'
  ["Ctrl+H"]='^H'  # Backspace
  ["Ctrl+I"]='^I'  # Tab
  ["Ctrl+J"]='^J'  # Enter
  ["Ctrl+K"]='^K'
  ["Ctrl+L"]='^L'  # Clear
  ["Ctrl+M"]='^M'  # Enter
  ["Ctrl+N"]='^N'
  ["Ctrl+O"]='^O'
  ["Ctrl+P"]='^P'
  ["Ctrl+Q"]='^Q'
  ["Ctrl+R"]='^R'  # Reverse search
  ["Ctrl+S"]='^S'
  ["Ctrl+T"]='^T'
  ["Ctrl+U"]='^U'
  ["Ctrl+V"]='^V'
  ["Ctrl+W"]='^W'  # Kill word
  ["Ctrl+X"]='^X'
  ["Ctrl+Y"]='^Y'
  ["Ctrl+Z"]='^Z'  # Suspend

  ["Up Arrow"]='^[A'
  ["Down Arrow"]='^[B'
  ["Left Arrow"]='^[D'
  ["Right Arrow"]='^[C'
  ["Esc"]='^['
  ["Tab"]='^[I'
  ["Return"]='^[M'
  ["Delete"]='^[H'
  ["Insert"]='^[2~'
  ["Home"]='^[H'
  ["End"]='^[F'
  ["Page Up"]='^[5~'
  ["Page Down"]='^[6~'
)

# 函数：根据按键名获取快捷键表示符
get_key_mapping() {
  local key_name="$1"
  
  # 查找按键名并返回对应的快捷键表示符
  if [[ -n "${keymap[$key_name]}" ]]; then
    echo "${keymap[$key_name]}"
  else
    echo "Error: Key '$key_name' not found"
  fi
}

# 绑定快捷键
bind_key() {
  local mode="$1"
  local key_name="$2"
  local command="$3"
  local key_binding
  key_binding=$(get_key_mapping "$key_name")
  
  if [[ "$key_binding" != "Error:"* ]]; then
    bindkey -M "$mode" "$key_binding" "$command"
  else
    echo "$key_binding"  # 错误提示
  fi
}

# zsh-surround
autoload -Uz surround
zle -N delete-surround  surround
zle -N add-surround     surround
zle -N change-surround  surround
bindkey -M vicmd cs change-surround
bindkey -M vicmd ds delete-surround
bindkey -M vicmd ys add-surround
bindkey -M visual S add-surround