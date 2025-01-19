# Git filter-branch to remove file/folder from history
git_delete_file_from_history() {
  if [ -z "$1" ]; then
    echo "Usage: git_remove_file_from_history <file-or-folder-path>"
    return 1
  fi
  
  local path_to_remove=$1

  echo "Removing $path_to_remove from history..."

  # Use git filter-branch to remove the file or folder from history
  git filter-branch --force --index-filter \
    "git rm --cached -r --ignore-unmatch $path_to_remove" \
    --prune-empty --tag-name-filter cat -- --all

  # Clean up reflog and git gc
  git reflog expire --expire=now --all
  git gc --prune=now --aggressive

  echo "$path_to_remove has been removed from history."
}

# 搜索commit title中包含某个字符串的全部commit信息
git_search_commits() {
  if [ -z "$1" ]; then
    echo "Usage: git_search_commits <search_string>"
    return 1
  fi

  # 使用传入的字符串作为过滤条件
  git log --oneline --grep="$1"
}

# 查看 Git 历史记录中某个文件的修改记录
git_file_history() {
  if [ -z "$1" ]; then
    echo "Usage: git_file_history <file-path>"
    return 1
  fi
  git log --oneline -- "$1"
}

# 查看所有分支的合并情况
git_check_branch_merge() {
  echo "Merged branches:"
  git branch --merged
  echo "Unmerged branches:"
  git branch --no-merged
}

# 清理 Git 仓库中的未跟踪文件
git_clean() {
  echo "Cleaning up untracked files..."
  git clean -fdx
}

# 检查 Git 仓库大小
git_size() {
  echo "Checking repository size..."
  du -sh .git
}

# 查看当前文件和上次提交的差异
git_diff_last_commit() {
  echo "Showing changes from last commit..."
  git diff HEAD^ HEAD
}

# 查看 Git 仓库的贡献者列表
git_contributors() {
  git shortlog -s -n
}

# 统计每个作者提交的数量
git_author_commits() {
  git log --format='%aN' | sort | uniq -c | sort -r
}

# 查看当前分支的名称
git_current_branch() {
  git rev-parse --abbrev-ref HEAD
}

# 强制推送当前分支到远程仓库
git_push_force() {
  git push --force origin $(git_current_branch)
}

# 查看 Git 日志，简短格式
git_log_short() {
  git log --oneline --graph --decorate --all
}

# Check if main exists and use instead of master
function git_main_branch() {
  command git rev-parse --git-dir &>/dev/null || return
  local ref
  for ref in refs/{heads,remotes/{origin,upstream}}/{main,trunk,mainline,default,stable,master}; do
    if command git show-ref -q --verify $ref; then
      echo ${ref:t}
      return 0
    fi
  done

  # If no main branch was found, fall back to master but return error
  echo master
  return 1
}

function git_branch_rename() {
  if [[ -z "$1" || -z "$2" ]]; then
    echo "Usage: $0 old_branch new_branch"
    return 1
  fi

  # Rename branch locally
  git branch -m "$1" "$2"
  # Rename branch in origin remote
  if git push origin :"$1"; then
    git push --set-upstream origin "$2"
  fi
}





