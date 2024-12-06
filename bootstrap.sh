#!/bin/bash

function eval_once() {
    var_name="$1"
    output_file="$2"

    if [ -z "$var_name" ] || [ -z "$output_file" ]; then
        echo "Error: Variable is empty or not set"
        return 1
    fi

    local dir_path=$(dirname "$output_file")
    if [ ! -d "$dir_path" ]; then
        echo "Creating directory: $dir_path"
        mkdir -p "$dir_path"
        
        # 检查目录创建是否成功
        if [ $? -ne 0 ]; then
            echo "Error: Failed to create directory"
            return 1
        fi
    fi

    printf "%s" "$var_name" > "$output_file"
    return $?
}

function apply() {
    local target="$1"
    $(which stow) -t ${HOME} ${target} --dotfiles --adopt --verbose -d ${DOTFILES}
}

function bootstrap() {
    targets=(zsh brew bat broot eza tig tmux)
    for target in "${targets[@]}"; do
        apply ${target}
    done
}

function dot() {
    if [ $# -eq 0 ]; then
        echo "Usage: dot [pull|push|commit|diff|cd|status|apply [path]]|bootstrap"
        return 1
    fi

    local command="$1"
    local target="$2"

    case "$command" in
        "pull")
            $(which git) -C "${DOTFILES}" pull origin ${target:-develop} --autostash
        ;;
        
        "push")
            $(which git) -C "${DOTFILES}" push origin ${target:-develop}
        ;;

        "commit")
            $(which git) -C "${DOTFILES}" add . && $(which git) -C "${DOTFILES}" commit
        ;;

        "diff")
            $(which git) -C "${DOTFILES}" diff
        ;;

        "cd")
            cd "${DOTFILES}"
        ;;
        
        "status")
            $(which git) -C "${DOTFILES}" status
        ;;
        
        "apply")
            apply ${target}
        ;;
        
        "bootstrap")
            bootstrap
        ;;

    esac
}


