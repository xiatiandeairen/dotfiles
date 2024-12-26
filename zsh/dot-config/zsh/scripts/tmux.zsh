# 启动多个 SSH 连接的 tmux 会话
tmux_ssh_servers() {
  if [ -z "$1" ]; then
    echo "Usage: tmux_ssh_servers <server1> <server2> ..."
    return 1
  fi

  # 创建新的 tmux 会话并命名
  tmux new-session -d -s ssh_sessions

  # 遍历所有服务器，创建一个窗格并连接
  for server in "$@"; do
    tmux split-window -h
    tmux send-keys "ssh $server" C-m
  done

  # 附加到会话
  tmux attach-session -t ssh_sessions
}

# 启动监控日志的 tmux 会话
tmux_monitor_logs() {
  # 创建新的 tmux 会话并命名
  tmux new-session -d -s logs_monitor

  # 水平分割两个窗格，分别查看不同的日志
  tmux split-window -h
  
  # 在第一个窗格中查看应用日志
  tmux send-keys -t logs_monitor:0.0 'tail -f /var/log/application.log' C-m
  
  # 在第二个窗格中查看错误日志
  tmux send-keys -t logs_monitor:0.1 'tail -f /var/log/error.log' C-m
  
  # 附加到会话
  tmux attach-session -t logs_monitor
}

# 启动开发环境的 tmux 会话
tmux_work() {
  # 创建一个新的 tmux 会话并命名
  tmux new-session -d -s dev_env
  
  # 创建并命名多个窗口
  tmux new-window -t dev_env:1 -n 'server'  # 新窗口运行服务器
  tmux send-keys -t dev_env:1 'npm start' C-m
  
  tmux new-window -t dev_env:2 -n 'database'  # 新窗口运行数据库
  tmux send-keys -t dev_env:2 'docker-compose up' C-m
  
  tmux new-window -t dev_env:3 -n 'frontend'  # 新窗口运行前端
  tmux send-keys -t dev_env:3 'npm run dev' C-m
  
  # 附加到 tmux 会话
  tmux attach-session -t dev_env
}

# 启动 tmux 会话并进入指定目录，自动加载 direnv 环境
tmux_cd() {
  if [ -z "$1" ]; then
    echo "Usage: tmux_start_with_direnv <working-directory>"
    return 1
  fi

  # 获取工作目录
  WORKDIR="$1"

  # 创建 tmux 会话并命名
  tmux new-session -d -s "work_session"

  # 创建并命名第一个窗口
  tmux rename-window -t "work_session:0" 'work'

  # 在该窗口中进入工作目录
  tmux send-keys -t "work_session:0" "z $WORKDIR" C-m

  # 自动执行 direnv 环境加载
  tmux send-keys -t "work_session:0" "direnv allow" C-m

  # 附加到 tmux 会话
  tmux attach-session -t "work_session"
}









