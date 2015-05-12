" plugins: http://vimawesome.com
"Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" fuzzy search
Plugin 'ctrlpvim/ctrlp.vim'
" git
Plugin 'tpope/vim-fugitive'
" nerdtree
Plugin 'scrooloose/nerdtree'
" navigation
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-unimpaired'
" auto-completion
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
" highlighter
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides' "visible-indentation
Plugin 'ap/vim-css-color' "css coloring
" ui
Plugin 'bling/vim-airline' "fancy status-bar

call vundle#end()
filetype plugin indent on  

"Ctrl-P settings
let g:ctrlp_map = '<c-o>'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|bower_component|node_modules|tmp|dist$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }
" vim-airline always show
set laststatus=2

" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible
set t_Co=256

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
if has("autocmd")
  filetype indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch		" highlight search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes) in terminals

" Source a global configuration file if available
" XXX Deprecated, please move your changes here in /etc/vim/vimrc
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
:filetype plugin on 
filetype plugin indent on	" allow language-specific indent(like ruby)
set autoread
set nocompatible	" Use Vim defaults (much better!)


set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
"set backup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set smartindent
colorscheme vividchalk
"set nu!			"added line numbers on the left of screen
set tabstop=2
set shiftwidth=2 
set expandtab

" space to Page-Down in normal mode
nmap <space> <c-f>
map <c-n> gt
map <c-p> gT
map <c-a> :A<cr>
imap <c-a> <esc>:A<cr>
"imap <c-a> <esc>^i
imap <c-e> <esc>$a
" find file mapping http://www.vim.org/scripts/script.php?script_id=1899
let g:FindFileIgnore=['*.o','*.pyc','*/tmp/*','*/.*/*']
nmap <c-t> :FindFile<cr>
nmap w <Leader><Leader>w
nmap b <Leader><Leader>b
" prev/next location
nnoremap . <c-o>
nnoremap , <c-i>


"gui font
set guifont=Monospace\ 20
"filetypes
au! BufRead,BufNewFile *.m setfiletype objc
au BufRead,BufNewFile *.handlebars,*.hbs set ft=handlebars
