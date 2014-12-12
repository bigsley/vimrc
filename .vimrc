let mapleader=" "
nnoremap <silent> <leader><space> :noh<CR>

call pathogen#infect()
syntax enable
set background=dark
colorscheme solarized
set number
filetype plugin indent on

" Add newlines by enter/shift-enter without entering insert mode
map <S-Enter> O<Esc>
map <CR> o<Esc>
map <BS> ddk
map L O------------------------------------------------------------------------<Esc>j0
map K Oconsole.log('<Esc><CR>Li')<Esc>kkJJ


" Removes trailing spaces
function Trim_whitespace()
  :undojoin | %s/\s*$//
  ''
:endfunction

" shortens CommandTFlush
:command CTF CommandTFlush

" autocmd FileType ruby,eruby,javascript autocmd BufWritePre <buffer> :call Trim_whitespace()
" highlight unwanted whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red

" show trailing whitespace:
:match ExtraWhitespace /\s\+\%#\@<!$/
" show tabs
:2match ExtraWhitespace /\t/

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set textwidth=72

" show trailing whitepace and spaces before a tab:
" :3match ExtraWhitespace / \+\ze\t/

" syntastic config
let g:syntastic_auto_jump=1

set wildignore=node_modules,iverson/app/vendor,*.css

set hlsearch
hi Search guibg=LightGoldenrod1 guifg=DarkGoldenrod4

highlight Cursor guifg=SlateBlue4 guibg=cyan1
