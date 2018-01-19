" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/vim-scripts/taglist.vim.git'
Plug 'https://github.com/vim-scripts/winmanager--Fox'
Plug 'https://github.com/WolfgangMehner/c-support.git'
Plug 'https://github.com/WolfgangMehner/bash-support.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()


syntax on
filetype plugin on
filetype on
set number
set noswapfile
"set background=dark 
"colorscheme solarized
colorscheme  evening
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set showmatch "highlight matching braces

"==============================TaglistConfig============================
"
"" pointer to exuberant ctags
let Tlist_Ctags_Cmd = "/usr/bin/ctags" 

 " set the window width
 " let Tlist_Inc_Winwidth=0
 "
 " " Focus the curse on the taglist window
 " let Tlist_GainFocus_On_ToggleOpen=1
 "
 " " Automatically open the taglist window
 " let Tlist_Auto_Opein=0
 "
 " " Automatically close the taglist window when no other windows exit
 " let Tlist_Exit_OnlyWindow=1
 "
 " " To display the tags for only current files 
 " let Tlist_Show_One_File=1
 "
 " " Always show the tags
 " let Tlist_Process_File_Always =1
 "
 " " show the graphic menu 
 " let Tlist_Show_Menu=1
 " "
 " "=============WinManager======================================"
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<CR>:

augroup LANGUAGE
	autocmd FileType c,cpp source ~/.vim/ftplugin/clang.vim
	autocmd FileType python source ~/.vim/ftplugin/go.vim
	autocmd FileType go source ~/.vim/ftplugin/go.vim
	autocmd FileType java source ~/.vim/ftplugin/java.vim
	autocmd FileType js source ~/.vim/ftplugin/js.vim
augroup end
