scriptencoding = utf-8
"
" プラグイン設定
"
" プラグイン管理はdeinを使用する
"
" @see https://github.com/Shougo/dein.vim
"---------------------------------------------------------------------------
"
"
" 設定
"
" プラグイン保存ディレクトリ
let s:dein_dir = expand(g:dein_dir)
" deinの保存先
let s:dein_repo_dir = s:dein_dir.'/repos/github.com/Shougo/dein.vim'
"
" # deinのインストール 
"---------------------------------------------------------------------------
" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif
"
"
" # Toml読み込み補助
"---------------------------------------------------------------------------
"
" リアルタイム読み込み
function! LoadToml(name)
  call dein#load_toml(expand(g:nora_vim_source_path).'/toml/'.a:name.'.toml', {'lazy' : 0})
endfunction
"
" LazyLoad対応
function! LazyLoadToml(name)
  call dein#load_toml(expand(g:nora_vim_source_path).'/toml/'.a:name.'.toml', {'lazy' : 1})
endfunction
"
" # 実行
"---------------------------------------------------------------------------
call dein#begin(s:dein_dir)
" vimprocのインストール
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
" コンテクスト別の処理
for s:name in g:nora_vim_contexts
  let file = 'context/'.s:name.'-'.g:nora_vim_context_stability.'.vim'
  if filereadable(expand(g:nora_vim_source_path).'/'.file) 
      call LoadSource(file)
  else
      let file = 'context/'.s:name.'.vim'
      call LoadSource(file)
  endif
endfor
" フレーバー処理
let file = 'flavor/'.g:nora_vim_flavor.'.vim'
call LoadSource(file)
" 設定終了
call dein#end()
" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
end
