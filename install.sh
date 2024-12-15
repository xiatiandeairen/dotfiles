#! /bin/bash

local project_exist="$1"

# Function to echo out text
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' 

get_script_dir() {
    # Get the directory path of the current script
    local script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    echo "$script_path"
}
CACHE_DIR=$(get_script_dir)/.backup 

print_message() {
    local type=$1
    local message=$2
    
    case $type in
        "info")
            echo -e "${BLUE}[INFO]${NC} $message"
            ;;
        "success")
            echo -e "${GREEN}[SUCCESS]${NC} $message"
            ;;
        "warning")
            echo -e "${YELLOW}[WARNING]${NC} $message"
            ;;
        "error")
            echo -e "${RED}[ERROR]${NC} $message"
            ;;
        *)
            echo "$message"
            ;;
    esac
}

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to install a command if it doesn't exist
install_if_missing() {
    local cmd="$1"    
    if ! command_exists "$cmd"; then
        print_message "warning" "$cmd is not installed. Installing..."
        if command_exists apt-get; then
            sudo apt-get update && sudo apt-get install -y "$cmd"
        elif command_exists yum; then
            sudo yum install -y "$cmd"
        elif command_exists brew; then
            brew install "$cmd"
        else
            print_message "error" "Could not find package manager. Please install $cmd manually."
            exit 1
        fi
    else
        print_message "info" "$cmd is already installed."
    fi
}

# Backup files
backup() {
    local source_path="$1"
    local target_dir="${2:-$CACHE_DIR}"
    local timestamp=$(date +%Y%m%d_%H%M%S)
    
    # Check if source exists
    if [ ! -e "$source_path" ]; then
        print_message "error" "Source path '$source_path' does not exist"
    fi

    # Create target directory if it doesn't exist
    if [ ! -d "$target_dir" ]; then
        mkdir -p "$target_dir"
    fi

    # Get the basename of the source
    local source_name=$(basename "$source_path")
    local backup_name="${source_name}_${timestamp}"
    local backup_path="${target_dir}/${backup_name}"

    print_message "warning" "about to backup ${source_path} file to ${backup_path}"
    # Create backup using tar with different options based on source type
    if [ -d "$source_path" ]; then
        # Backup directory
        cp -r "$source_path" "$backup_path"
        if [ $? -eq 0 ]; then
            print_message "success" "Directory backup created: $backup_path"
        else
            print_message "error" "Failed to backup directory: $source_path"
        fi
    elif [ -f "$source_path" ]; then
        # Backup file
        cp "$source_path" "$backup_path"
        if [ $? -eq 0 ]; then
            print_message "success" "File backup created: $backup_path"
        else
            print_message "error" "Failed to backup file: $source_path"
        fi
    fi
}

# environment
if [ -d /opt/homebrew/bin/ ]; then
    PATH="/opt/homebrew/bin:${PATH}"
elif [ -d /usr/local/Homebrew/bin ]; then
    PATH="/usr/local/Homebrew/bin:${PATH}"
fi

# git
print_message "success" "==> Step One: clone project start"
if $project_exist; then
    print_message "warning" "no need to clone project finish"
elif [ ! -d ${HOME}/dotfiles ]; then
    git clone --recurse-submodules git@github.com:xiatiandeairen/dotfiles.git ${HOME}/dotfiles
    print_message "warning" "clone project success, and store in ${HOME}/dotfiles"
fi
print_message "success" "==> Step One: clone project finish"

# install all needed cmd tools
software_list=("zsh" "stow" "git" "tig" "curl" "wget" "vim" "nvim" "emacs" "fzf" "bat" "eza" "tldr" "broot" "thefuck" "tmux" "htop" "zoxide" "w3m" "s-search" "jq" "ack" "fd" "gum" "direnv" "rg" "ripgrep the_silver_searcher")
print_message "success" "==> Step One: install all needed command line tools"
for software in "${software_list[@]}"; do
    install_if_missing "$software"
done
print_message "success" "==> Step One: install success"

# backup config
print_message "success" "==> Step Two: backup existing config"
paths=("${HOME}/.zshenv" "${HOME}/.config")
for path in "${paths[@]}"; do
    backup "$path"
done
print_message "success" "==> Step Two: backup success"

# stow config
print_message "success" "==> Step Three: stow new config"
export DOTFILES=$(get_script_dir)
source $(get_script_dir)/bootstrap.sh
bootstrap
print_message "success" "==> Step Three: stow success"
