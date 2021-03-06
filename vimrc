" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
call pathogen#infect()
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

imap <S-Space> <Esc>
:inoremap{ {}<Esc>i
:inoremap( ()<Esc>i
:inoremap[ []<Esc>i
:inoremap" ""<Esc>i
:inoremap' ''<Esc>i

""""""""""""""YCM""""""""""""""

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'
call vundle#end()
filetype plugin indent on

let g:ycm_server_use_vim_stdout=0
let g:ycm_server_keep_logfiles = 1
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_server_log_lever='debug'
let g:ycm_path_to_python_interpreter ='/usr/bin/python'

set completeopt=menu

let mapleader=","

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

""""""""""""""YCM""""""""""""""
