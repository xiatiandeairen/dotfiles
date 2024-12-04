#! /bin/bash -x

function apply() {
    local target="$1"
    $(which stow) -t ${HOME} ${target} --dotfiles --adopt --verbose -d ${DOTFILES}
}

function bootstrap() {
    targets=(zsh)
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
            $(which git) -C "${DOTFILES}" pull origin main --autostash
        ;;
        
        "push")
            $(which git) -C "${DOTFILES}" push origin main
        ;;

        "commit")
            $(which git) -C "${DOTFILES}" commit -a
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


