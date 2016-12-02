set tabstop=2
set shiftwidth=2
set expandtab
set shiftround
set ai
autocmd FileType make set noexpandtab
autocmd FileType aspperl set noexpandtab
au FileType perl setlocal iskeyword-=:
au FileType puppet setlocal iskeyword-=:

" comScore perl CGI scripts
au BufNewFile,BufRead *.pli setf perl

" diffs during git commits
map <Leader>gg :silent new diff.staged \| :set filetype=git-diff \| :r! git diff --cached -p --stat<CR>:se ro<CR>:set nospell \| :goto 1<CR>
map <Leader>gG :silent new diff.unstaged \| :set filetype=git-diff \| :r! git diff -p --stat<CR>:se ro<CR>:set nospell \| :goto 1<CR>

" disable comment continuations (see fo-table)
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" vim-json plugin options:
let g:vim_json_comments = 1

" vim-easy-align options:
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" highlight trailing whitespace
"highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
"match ExtraWhitespace /\s\+$/

" quick fold toggling
nnoremap <tab> za

call plug#begin()
  Plug 'junegunn/vim-easy-align'
  Plug 'rodjek/vim-puppet'
  Plug 'thelocehiliosan/vim-json'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-surround'
  Plug 'vim-scripts/headers.vim'
  Plug 'godlygeek/tabular'

  if v:version >= 703        
    Plug 'jamessan/vim-gnupg'
  endif
call plug#end()
