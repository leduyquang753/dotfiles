language english

set guifont=Iosevka_LEDUQU:h9:cANSI:qDRAFT
set ruler
set rulerformat=%20(%20(R\ %3l\/%L\ \ C\ %3v%)%)
set backspace=indent,eol,start
set number
set tabstop=4 softtabstop=-1 shiftwidth=0
set nojoinspaces
set noexpandtab
set synmaxcol=100000
syntax sync minlines=10000
syntax on
set autoindent
set copyindent
set virtualedit=onemore
set nofixendofline
set noendofline
set splitright
set splitbelow
colorscheme custom
set titlestring=%t
set showcmd
set wildmenu
set wildoptions=pum
set shortmess=aIstT
set indentkeys=
set completeopt=menuone,preview,noinsert
set expandendofline
"set keepautoindent
set ignorecase
set foldmethod=indent
set foldlevel=9999
set fillchars=eob:\ ,lastline:>
set listchars=space:⎵,tab:↹\ ,eol:↵
set smoothscroll
set display=lastline
"set clipboard=unnamed
"set secure
"set exrc
set wrap
set linebreak
set nolist
set lazyredraw
set termwintype=winpty
set termguicolors

function GetCustomIndent()
	if &expandtab
		return -1
	endif
	if v:lnum == 1
		return 0
	endif
	let s:line = getline(v:lnum - 1)
	if match(s:line, "^\\s*$") == 0
		return -1
	endif
	let s:count = 0
	let s:max = strchars(s:line)
	while s:count < s:max && s:line[s:count] == "\t"
		let s:count += 1
	endwhile
	return s:count * &tabstop
endfunction

set indentexpr=GetCustomIndent()

let &t_SI = "\<Esc>[5 q"
let &t_SR = "\<Esc>[3 q"
let &t_EI = "\<Esc>[5 q"

augroup NoEndOfLine
autocmd BufNewFile * set noendofline
augroup END

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nnoremap <expr> <Down> v:count ? 'j' : 'gj'
nnoremap <expr> <Up> v:count ? 'k' : 'gk'
nnoremap <End> $l
nnoremap $ $l

command E Explore

autocmd BufRead,BufNewFile *.hlsl set filetype=hlsl
autocmd BufRead,BufNewFile *.ldqj set filetype=ldqj
autocmd BufRead,BufNewFile *.xaml set filetype=xml
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.rml set filetype=html
autocmd BufRead,BufNewFile *.svelte set filetype=html
autocmd BufRead,BufNewFile *.tex set filetype=tex

let g:netrw_sort_sequence="*,\\.swp$,\\.bak$"

let g:fzf_layout = { 'window': '20new' }
let g:fzf_preview_window = ['up:8:hidden', 'tab']
let g:show_spaces_that_precede_tabs = 1

set grepprg=ugrep\ -RInk\ -j\ -u\ --tabs=1\ --ignore-files
set grepformat=%f:%l:%c:%m,%f+%l+%c+%m,%-G%f\\\|%l\\\|%c\\\|%m

function! GetHighlightGroup()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc