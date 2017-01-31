set tabstop=2
set shiftwidth=2
set expandtab
set shiftround
set ai

" change location of temporary files
call system('mkdir -p ~/.vim/_files/{backup,swap,undo}')
set backupdir=~/.vim/_files/backup//
set directory=~/.vim/_files/swap//
set undodir=~/.vim/_files/undo//

" reset cursor position when entering buffer
autocmd BufReadPost *
  \ if line("'\"") <= line("$") |
  \   execute "normal! g`\"" |
  \ endif

autocmd FileType make set noexpandtab
autocmd FileType aspperl set noexpandtab
au FileType perl setlocal iskeyword-=:
au FileType puppet setlocal iskeyword-=:

" python specific settings
au FileType python set tabstop=4 shiftwidth=4

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

" indent-guides options
colorscheme default
let g:indent_guides_enable_on_vim_startup=1
" let g:indent_guides_color_change_percent=10
let g:indent_guides_auto_colors=0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=235

" download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

call plug#begin()
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'godlygeek/tabular'
  Plug 'guns/xterm-color-table.vim'
  Plug 'junegunn/vim-easy-align'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'rodjek/vim-puppet'
  Plug 'thelocehiliosan/vim-json'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'vim-scripts/headers.vim'

  if v:version >= 703        
    Plug 'jamessan/vim-gnupg'
  endif
call plug#end()
