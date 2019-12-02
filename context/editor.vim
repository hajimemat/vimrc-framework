scriptencoding = utf-8
"
" --------------------
" 編集
" --------------------
"
" マークダウンを使うか
let g:nora_enable_markdown = get(g:, 'nora_extend_markdown', 1)
"
" ミニマルを継承
call LoadSource('context/minimal.vim')

" TOML
call LoadToml('context/editor')

if (g:nora_enable_markdown)
    call LoadToml('markdown')
endif
