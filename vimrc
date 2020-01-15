call pathogen#infect()

let mapleader = ","
nnoremap <silent><Leader>w <Esc>:w<CR>
nnoremap <silent><Leader>q <Esc>:q<CR>
"find
nmap <leader>f :call SearchWord()<CR>
inoremap <Leader><Tab> <C-V><Tab>

syntax on
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

set number 
"syntax slow
"set relativenumber
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set showbreak=↪\
set listchars=eol:¶,tab:>-,trail:∙,nbsp:•
"set list

xnoremap p pgvy

"highlight
set hlsearch

set cursorline
"set cursorcolumn

set nocompatible
set hidden

filetype plugin indent on

set backspace=indent,eol,start

"syntax faster
set re=1

"set spell spelllang=en_us

if has("unix")
    set clipboard=unnamedplus
    let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol='x'
endif

if has("mac")
    set clipboard=unnamed
endif


"folding
"set foldmethod=syntax
"let g:DisableAutoPHPFolding = 1

set autoread

set noswapfile

"ctags
set tags+=./tags
set notagbsearch

set background=dark

"solarized
"colorscheme solarized

"airline
set laststatus=2
set ttimeoutlen=50
let g:airline#extensions#whitespace#show_message = 0
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_exclude_preview = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
set fillchars=stl:+,stlnc:-

"airline theme
"let g:airline_theme='papercolor'

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_checkers = ['php']
let g:syntastic_php_phpcs_args = "--standard=PSR1" 
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html','xhtml','go'] }

"au BufWritePost *.php silent! !ctags -R --fields=+laimS --languages=php -f .tags &

"tagbar
nnoremap <Leader>s :TagbarToggle<CR>

"SuperTab
let g:SuperTabContextTextFileTypeExclusions = ['html','javascript']
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"Command-T
let g:CommandTMaxHeight = 0

"vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" NERDTress
"autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
nnoremap <Leader>d :NERDTreeToggle<CR>
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')

if exists("g:loaded_webdevicons")
    call webdevicons#refresh()
endif

"Jedi
"let g:jedi#auto_initialization = 1
"let g:jedi#use_tabs_not_buffers = 1
"不与NERDTree冲突
"let g:jedi#goto_command = "<leader>0"
"
"indentLine
let g:indentLine_color_term = 239
