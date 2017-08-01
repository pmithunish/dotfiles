" vim-pathogen specific command to install plugins
execute pathogen#infect()

" setting nocompatibility to vi and enable advance features of vim
set nocompatible
set autoread
set history=1000
" setting syntax highlighting
syntax on

" setting theme to cobalt 2
colorscheme cobalt2

" setting to display line numbers
set number
set norelativenumber

" setting the leader key to <space>
let mapleader=" "

" setting the source command to ' s'
nmap <leader>s :source ~/.vimrc<cr>

set hidden
" allow specific filetype indent rules if available
filetype plugin indent on

" the text beyond the window size on a single line will not wrap around on the next line
set nowrap

" setting tab styles
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set shiftround

"setting smart and auto indent
set smartindent
set autoindent

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" make backspace behave in a sane manner
set backspace=indent,eol,start

" search settings
set ignorecase
set smartcase
set incsearch
set nolazyredraw

set magic

" setting the highlight search text toggler to ' h'
nmap <leader>h :set hlsearch!<cr>

" shows the matching paranthesis when the cursor is next to a openning or closing paranthesis
set showmatch

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
	for key in ['<Up>', '<Down>', '<Left>', '<Right>']
		exe prefix . "noremap " . key . " <Nop>"
	endfor
endfor

" settings for the lightline plugin
" displays the lighline without window splits
set laststatus=2
" removes the default mode status line
set noshowmode
" removes the lag when switching from insert to normal mode
set ttimeoutlen=50

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
	exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('js', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('html', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('ts', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('json', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('scss', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('css', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('ico', 'Red', 'none', '#ffa500', '#151515')

set encoding=utf8
let g:airline_powerline_fonts = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:DevIconsEnableFoldersOpenClose = 1

" mapping shortcut to save
nmap <leader>w :w<cr>

vmap <leader>[ <gv
vmap <leader>] >gv
nmap <leader>[ <<
nmap <leader>] >>

nmap <leader>l :set list!<cr>

nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k

nmap <C-n> gt
nmap <C-p> gT
nmap <leader>1 1gt
nmap <leader>2 2gt
nmap <leader>3 3gt
nmap <leader>4 4gt
nmap <leader>5 5gt
nmap <leader>6 6gt
nmap <leader>7 7gt
nmap <leader>8 8gt

nmap <leader>q :q<cr>
