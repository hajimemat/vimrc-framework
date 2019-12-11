scriptencoding utf-8 " 設定ファイルの文字コードを宣言

" Noraフレーバーを継承する
call LoadSource('flavor/nora.vim')

call LoadToml('flavor/machino')

" Tomlで読み込んだカラースキーマをセット
au NoraAutoCmd VimEnter * nested colorscheme jellybeans
