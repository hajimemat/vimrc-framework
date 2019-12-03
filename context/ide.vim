scriptencoding = utf-8
"
" --------------------
" IDE化
" --------------------
"
" PHPを使うか
let g:nora_vim_enable_php = get(g:, 'nora_vim_enable_php', 1)
" HTMLを使うか
let g:nora_vim_enable_html = get(g:, 'nora_vim_enable_html', 1)

" Editorを継承
call LoadSource('context/editor.vim')

call LoadToml('context/ide')

" PHPの開発用
if (g:nora_vim_enable_php)
  call LoadToml('ide-php')
  let g:ale_php_phpcs_standard = 'PSR2'
  let g:ale_fix_on_save = 1
  au NoraAutoCmd Filetype php let b:ale_linters = ['phpcs']
  au NoraAutoCmd Filetype php let b:ale_fixers = ['php_cs_fixer']
endif

" IDE用の設定を読み込む
call LoadSource('config/ide.vim')
