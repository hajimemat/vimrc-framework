scriptencoding = utf-8
" フラグ 1 or never
" Linter(コードチェックツール)の設定
"let g:ale_linters = {}
" Fixer(コード整形ツール)の設定
"let g:ale_fixers = {}
" ファイル保存時にLinterを実行するか
let g:ale_lint_on_save = 1
" テキスト変更時にはLinterを実行するか 
let g:ale_lint_on_text_changed = 0
" ファイル保存時にはFixerを実行するか
let g:ale_fix_on_save = 1
" テキスト変更時にはFixerを実行するか
let g:ale_fix_on_text_changed = 0
" 余分な空白があるときは警告表示
"let b:ale_warn_about_trailing_whitespace = 0
" ALE実行時にでる目印行を常に表示
let g:ale_sign_column_always = 1

" let g:ale_php_phpcs_standard = 'psr2'
" let g:ale_linters = {
"       \ 'php': ['php','phpcs','phpmd'],
"       \ 'javascript': ['eslint'],
"       \ }
" let g:ale_fixers = {
"       \ 'php': ['phpcbf'],
"       \ 'javascript': ['prettier-eslint'],
"       \ 'vue':        ['prettier-eslint'],
"       \ }
" let g:ale_php_phpcbf_standard = 'psr2'
" let g:ale_php_phpmd_ruleset = 'codesize,design,unusedcode,naming'
