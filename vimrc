scriptencoding utf-8 " 設定ファイルの文字コードを宣言

" Local Vimrcを読み込む
if filereadable('~/.vimrc.local')
  execute 'source ~/.vimrc.local'
endif
"
" Bootstrap
execute 'source '.expand(g:nora_vim_source_path).'/kernel/bootstrap.vim'
