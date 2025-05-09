function apply {
    local target="$1"
    $(which stow) -t ${HOME} ${target} --dotfiles --adopt --verbose -d ${DOTFILES}
}

function bootstrap {
    targets=(zsh brew bat broot eza tig tmux zoxide vim thefuck nvim direnv kitty emacs maven gradle hammerspoon shallow-backup git npm)
    for target in "${targets[@]}"; do
        if [ -d ${DOTFILES}/${target} ]; then
            echo "apply ${target} success"
            apply ${target}
        fi
    done
}

function dot {
    if [ $# -eq 0 ]; then
        echo "
            Usage: dot <command> [target]

            Commands:
            pull        Fetch the latest changes from the remote repository and merge them into the target branch (default: develop).
                        Usage: dot pull [target]

            push        Push your local changes to the remote repository on the target branch (default: develop).
                        Usage: dot push [target]

            commit      Stage all changes and commit them with a default message.
                        Usage: dot commit

            diff        Show the differences between your local changes and the latest commit.
                        Usage: dot diff

            cd          Change directory to the dotfiles repository.
                        Usage: dot cd

            status      Show the current status of your dotfiles repository.
                        Usage: dot status

            apply       Apply a patch or configuration.
                        Usage: dot apply [target]

            bootstrap   Initialize or set up the dotfiles (e.g., by installing dependencies).
                        Usage: dot bootstrap

            benchmark   Run benchmark tests on the dotfiles setup.
                        Usage: dot benchmark

            edit        use fzf to edit file.
                        Usage: dot benchmark
        "
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

        "benchmark")
            zsh ${ZDOTDIR}/plugins/zsh-bench/zsh-bench
        ;;

        "edit")
            find ${DOTFILES} -type f | fzf | xargs -o nvim
        ;;

    esac
}


