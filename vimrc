scriptencoding utf-8 " 設定ファイルの文字コードを宣言

" Local Vimrcを読み込む
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
"
" Bootstrap
execute 'source '.get(g:, 'nora_vim_source_path', '~/.vimrc-framework').'/kernel/bootstrap.vim'
