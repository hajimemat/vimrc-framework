scriptencoding utf-8 " 設定ファイルの文字コードを宣言

" defaultフレーバーを継承する
call LoadSource('flavor/default.vim')

" 見た目 {{{
call dein#add('nanotech/jellybeans.vim')
call dein#add('w0ng/vim-hybrid')
au NoraAutoCmd VimEnter * nested colorscheme jellybeans
" au MyAutoCmd BufReadPost markdown map <NORA><C-s> :aaaaaa
" }}}
