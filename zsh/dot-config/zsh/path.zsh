[ -d ${HOME}/.local/bin ] && export PATH="${HOME}/.local/bin:${PATH}"
[ -d ${DOTFILES}/workflow/bin ] && export PATH="${DOTFILES}/workflow/bin:${PATH}"
[ -d /opt/homebrew/bin ] && export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:${PATH}"