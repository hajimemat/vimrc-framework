scriptencoding = utf-8
"
" --------------------
" 最小限の設定
" --------------------
"
" TOML
call LoadToml('context/minimal')
"
" キーマップ
nnoremap <C-p> :FZFFileList<CR>
