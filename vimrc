scriptencoding utf-8 " 設定ファイルの文字コードを宣言
filetype plugin indent off
"
"
" コンテクスト
"let g:nora_vim_contexts = ['develop', 'desktop', 'php', 'nora']
"let g:nora_vim_contexts = ['minimal']
"let g:nora_vim_contexts = ['develop', 'desktop', 'php', 'html', 'nora', 'rst']
"let g:nora_vim_contexts = ['minimal']
let g:nora_vim_contexts = get(g:,'nora_vim_contexts', ['minimal'])
" フレーバー
let g:nora_vim_flavor = get(g:,'nora_vim_flavor', 'hajimemat')
"
"
" ディレクトリ
" let g:nora_vim_source_path='~/.dotfiles/vim'
let g:nora_vim_source_path=get(g:,'nora_vim_source_path','~/.dotfiles/vim')
"
"　処理関数の定義
function! LoadSource(path)
  execute 'source '.expand(g:nora_vim_source_path).'/'.a:path
endfunction
"
"
" 初期処理
call LoadSource('kernel/initialize.vim')
"
" pluginを設定する
call LoadSource('kernel/plugins.vim')
"
" Syntaxを有効にする
syntax enable
filetype plugin indent on

