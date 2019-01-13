" Syntaxs, TODO: add more
syntax on
filetype plugin indent on

" Fancy line numbering.
"   Command mode: Relative above and below, abs on cur line
"   Insert mode:  Absolute throughout
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" REmaps
nore n nzz
nore } }zz
nore { {zz
nore <Leader>q" ciw""<Esc>P
nore <Leader>q' ciw''<Esc>P
nore <expr> <f2> &foldlevel ? 'zM' : 'zR'

" FOLDING
" Global preferences
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set foldlevel=1
set foldmethod=indent
set foldnestmax=12
" JS
let javascript_fold=0
" SCSS
au BufRead,BufNewFile *.scss set filetype=scss.css

" COLORING
" Buffer split color
hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#000000 cterm=none gui=none

" Odds and ends... The kinds of stuff that really should be on by default
set hlsearch

augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
augroup END

"Highlight FIXME, CHANGED, BUG, MOVE and others
if has("autocmd")
	"Highlight TODO, FIXME, NOTE, etc.
	autocmd Syntax * call matchadd('Todo','\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\|MOVE\|LOC\)')
	autocmd Syntax * call matchadd('Debug','\W\zs\(NOTE\|INFO\|IDEA\)')
endif
