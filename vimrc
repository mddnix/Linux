""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             My Vimrc Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Set Environment
set history=1000              " The command-lines that you entered.
set encoding=utf-8            " Sets the character encoding used inside Vim.
set showcmd                   " Display the incomplete commands in the bottom.
set wildmenu                  " Display completion matches on status line.
set ruler                     " Show the line numbers.
set number                    " precede each line with its line number.
set background=dark
colorscheme pablo
set scrolloff=5               " Show 5 lines of context around the cursor.
set lbr                       " Don't line wrap mid-word.

""" change the mapleader from \ to ,
" NOTE: This has to be set before <leader> is used.
let mapleader=","

""" Set TAB spaces
" http://vimcasts.org/episodes/tabs-and-spaces/
set tabstop=4     " 4 space tab.
set expandtab     " Replaces a <TAB> with spaces.
set softtabstop=4 " Causes backspace to delete 4 spaces = converted <TAB>.
set shiftwidth=4  " The amount to block indent when using < and >.
set smarttab      " Uses shiftwidth instead of tabstop at start of lines.

""" Search Options
set incsearch  " When typing a search command, matched string gets highlighted.
set hlsearch   " Highlight all searched matches.
set ignorecase " Case of normal letters is ignored.
set smartcase  " Override the 'ic' option if the search pattern is upper case.

""" Programming IDE Settings
syntax on       " Enables syntax highlighting.
set colorcolumn=80 
set autoindent  " Apply the indentation of the current line to the next.
set smartindent " Reacts to the syntax/style of the code you are editing.
set showmatch   " Briefly jump to the matching one brace. % to toggle on/off.

" Toggles paste mode for copying indented code.
" http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
set pastetoggle=<F2>

""" Mappings
" Underline the current line with dashes/hashes
map <Leader># <Esc>yyp<C-v>$r#
map <Leader>- <Esc>yyp<C-v>$r-
map <Leader>= <Esc>yyp<C-v>$r=

" Toggle number mode (Ctrl+n)
nmap <C-N> :set invnumber<CR> 

" Start insert mode at EOF
map <Leader>o <Esc>Go

" Write file created by root user.
" Syntax- :w !sudo tee %
" Usage- :W <Enter>
command W :silent exe "write !sudo tee % >/dev/null" | silent edit!
