scriptencoding = utf-8
"
" --------------------
" 編集
" --------------------
"
" マークダウンを使うか
let g:nora_vim_enable_markdown = get(g:, 'nora_vim_extend_markdown', 1)
" NERDTreeを使うか
let g:nora_vim_enable_nerdtree = get(g:, 'nora_vim_enable_nerdtree', 1)
"
" ミニマルを継承
call LoadSource('context/minimal.vim')

" TOML
call LoadToml('context/editor')

if (g:nora_vim_enable_markdown)
    call LoadToml('markdown')
    call LoadSource('config/markdown.vim')
endif
