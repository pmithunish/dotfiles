" vim-pathogen specific command to install plugins
execute pathogen#infect()

" setting nocompatibility to vi and enable advance features of vim
set nocompatible
" setting syntax highlighting
syntax on

" setting theme to cobalt 2
colorscheme cobalt2

" setting to display line numbers
set number
set relativenumber

" setting the leader key to <space>
let mapleader=" "

" setting the source command to ' s'
map <leader>s :source ~/.vimrc<cr>

" allow specific filetype indent rules if available
filetype plugin indent on

" the text beyond the window size on a single line will not wrap around on the next line
set nowrap

" setting tab styles
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"setting smart and auto indent
set smartindent
set autoindent

" setting the highlight search text toggler to ' h'
map <leader>h :set hlsearch!<cr>

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
