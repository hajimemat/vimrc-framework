scriptencoding utf-8 " 設定ファイルの文字コードを宣言

" defaultフレーバーを継承する
call LoadToml('flavor/hajimemat')

" 見た目 {{{
au NoraAutoCmd VimEnter * nested colorscheme jellybeans
" au MyAutoCmd BufReadPost markdown map <NORA><C-s> :aaaaaa
" }}}
