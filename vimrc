execute pathogen#infect()

let mapleader = ","
nnoremap <silent><Leader>w <Esc>:w<CR>
nnoremap <silent><Leader>q <Esc>:q<CR>
nmap <leader>t :call SearchWord()<CR>

syntax enable

set number 
set relativenumber
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set listchars=eol:$,tab:>-
"set list

"highlight
set hlsearch

set cursorline

set nocompatible
set hidden
set clipboard=unnamed

filetype plugin indent on

set backspace=indent,eol,start

"set spell spelllang=en_us

"folding
"set foldmethod=syntax

set autoread

let os = substitute(system('uname'), "\n", "", "")
if os == "Darwin"
    silent !mkdir ~/tmp > /dev/null 2>&1
	set dir=~/tmp
elseif os == "Linux"
	set dir=/tmp
endif

"ctags
set tags+=.tags

set background=dark

"solarized
colorscheme solarized
"let g:solarized_termcolors=256

"airline
set laststatus=2
set ttimeoutlen=50
let g:airline#extensions#branch#enabled = 1
let g:airline_exclude_preview = 1
"let g:airline#extensions#tabline#enabled = 1

"NERDTree
let NERDTreeShowHidden=1
nnoremap <Leader>d :NERDTreeToggle<CR>


"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_checkers = ['php']
let g:syntastic_php_phpcs_args = "--standard=PSR1" 
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html','xhtml'] }

"ctrlspace
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1 
let g:CtrlSpaceSymbols = { "File": "◯" }
nnoremap <silent><C-p> :CtrlSpace O<CR>

au BufWritePost *.php silent! !ctags -R --fields=+laimS --languages=php -f .tags &

"tagbar
nnoremap <Leader>s :TagbarToggle<CR>

"PIV
let g:DisableAutoPHPFolding = 1
