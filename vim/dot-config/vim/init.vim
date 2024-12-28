" runtimepath
set runtimepath+=${MYVIMDIR}
set runtimepath+=${MYVIMDIR}/after

" config
source ${MYVIMDIR}/config/options.vim
source ${MYVIMDIR}/config/functions.vim
source ${MYVIMDIR}/config/keymaps.vim
source ${MYVIMDIR}/config/autocmds.vim
source ${MYVIMDIR}/config/abbrev.vim

" plugins
call plug#begin("$MYVIMDIR/plugged")
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'wellle/targets.vim'
Plug 'dense-analysis/ale'
Plugin 'christoomey/vim-tmux-navigator'
call plug#end()
