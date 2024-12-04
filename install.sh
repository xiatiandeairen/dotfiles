#! /bin/bash

# Function to echo out text
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' 
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

# Function to install all needed cmd tools
software_list=("zsh" "stow" "git" "tig" "curl" "wget" "vim" "nvim" "emacs" "fzf" "bat" "eza" "tldr" "broot" "thefuck" "tmux" "htop" "zoxide" "w3m" "s-search" "jq" "ack" "fd")
print_message "success" "==> Step One: install all needed command line tools"
for software in "${software_list[@]}"; do
    install_if_missing "$software"
done
print_message "success" "==> Step One: install success"

