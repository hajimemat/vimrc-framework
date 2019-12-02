scriptencoding utf-8 " 設定ファイルの文字コードを宣言
"
" 環境の判定処理 {{{
" 
" Windowsか否か
let s:is_windows = has('win16') || has('win32') || has('win64')
" Windows Cygwinか否か
let s:is_cygwin  = has('win32unix')
" Nvimか否か
let s:is_nvim    = has('nvim')
" lua拡張が有効か
let s:has_lua    = has('lua')
" python拡張が有効か
let has_python   = has('python') && executable('python')
" python3拡張が有効か
let has_python3  = has('python3') && executable('python3')
" }}}
"
" 各種ディレクトリの設定をする {{{
let g:var_dir = get(g:,'var_dir', '~/.vim')
if has('nvim')
  let g:var_dir = g:var_dir.'/nvim'
else
  let g:var_dir = g:var_dir.'/vim'
end
let g:dein_dir      = g:var_dir.'/dein'
let g:cache_dir     = g:var_dir.'/cache'
let g:backup_dir    = g:var_dir.'/backup'
let g:tmp_dir       = g:var_dir.'/tmp'
let g:undo_dir      = g:var_dir.'/undo'
" }}}
"
" 起動時に一度だけ行う処理 {{{
if !exists('g:loaded_vimrc_init')
  " ディレクトリを作成する
  for d in [g:cache_dir,g:backup_dir,g:tmp_dir,g:undo_dir]
    if !isdirectory(expand(d))
      echom expand(d)'を作成します'
      call mkdir(expand(d), 'p')
    endif
  endfor

  " autocmdのグループを作成する
  augroup NoraAutoCmd
    autocmd!
  augroup END

  " 実行済フラグを立てる
  let g:loaded_vimrc_init = 1
endif
" }}}
"
" プラグインに依存しない
call LoadSource('config/default.vim')
