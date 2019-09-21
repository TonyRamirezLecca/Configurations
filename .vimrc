"VUNDLE"
  set nocompatible              " be iMproved, required
  filetype off                  " required

  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
		Plugin 'morhetz/gruvbox'
		Plugin 'SirVer/ultisnips'
		Plugin 'scrooloose/nerdtree'
		Plugin 'itchyny/lightline.vim'
		Plugin 'terryma/vim-multiple-cursors'
		Plugin 'yuttie/comfortable-motion.vim'
		Plugin 'bling/vim-bufferline'

  call vundle#end()            " required

"UltiSnips"
	let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
	let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<c-b>"
	nnoremap <leader>use :UltiSnipsEdit

"NERDTree"
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"VIM SETTINGS"
  filetype plugin indent on    " required
	set omnifunc=syntaxcomplete#Complete
  set relativenumber
  set clipboard=unnamed
	syntax on
	let g:gruvbox_italic=1
	colorscheme gruvbox
	set background=dark
  hi Comment ctermfg=244
	hi Folded ctermfg=242
	set number
	set textwidth=70
  set belloff=all 
  set hidden 
  set splitbelow 
  set visualbell 
  set autowrite 
  set scrolloff=15 
  set foldmethod=indent 
  set showcmd
  set showmatch 
  set ignorecase 
  set shiftwidth=2 
  set tabstop=2
  set softtabstop=2
	set backspace=indent,eol,start
	set wildmenu
	set laststatus=2
	set cursorline

"GENERAL MAPPINGS"
	"close ("
	inoremap (' ('')<esc>hi
	"Easy :"
  nmap <space> :
	"Easy Escape"
  imap jj <esc>
	"Opening { with enter wraps"
  inoremap {<Enter> {<Enter>}<Esc>ko
	"Easy parameters"
	inoremap (" ("")<Esc>hi
	"Last buffer"
	nnoremap , <C-^>
	"Better j k navigation"
	nnoremap j gj
	nnoremap k gk
	"Replace same word"
	nnoremap -r *<S-N>cgn
	nnoremap -0 0w*<S-N>cgn
	"Easy copy/delete all"
	nnoremap -y ggyG
	nnoremap -d ggdG
	"Easy edit"
	nnoremap e :e 
	"UseMouse"
	set mouse=a
	"Splits and navigation"
	nnoremap ;h <C-w>h
	nnoremap ;l <C-w>l
	nnoremap ;j <C-w>j
	nnoremap ;k <C-w>k
	nnoremap ;v <C-w>v
	nnoremap ;w <C-w>w
	nnoremap ;< <C-w>20<
	nnoremap ;> <C-w>20>
	"Visual with just v, not V"
	nnoremap v <S-v>
	nnoremap <S-v> v
	"Ctrl-A Ctrl-C Ctrl-V"
	nnoremap <C-c> ggyG
	nnoremap <C-v> Go<Esc>pkdggyGgg
	"Copy Until End of Line"
	inoremap <S-Y><S-Y>  yg_
	
"Auto Commands"
	autocmd BufNewFile,BufRead *.css setlocal nowrap
	autocmd BufNewFile,BufRead *.html setlocal nowrap
	autocmd BufNewFile,BufRead *.js setlocal nowrap
	"Vim jumps to last position when opening a file"
	if has("autocmd")
		au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
	endif

"SOURCE TO MAPPING FILES"
  "source ~/.vim_mappings/JS_mappings.vim
  "source ~/.vim_mappings/CSS_mappings.vim



