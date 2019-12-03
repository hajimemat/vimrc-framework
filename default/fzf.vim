scriptencoding = utf-8
"
" FZFの設定
"
" - https://qiita.com/Sa2Knight/items/6635af9fc648a5431685
" - https://meteora.work/vim-dein-fzf
"
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit',
    \ 'ctrl-o': '!open'
    \ }
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
command! FZFFileList call fzf#run(fzf#wrap({
    \ 'source': 'find . -type d -name .git -prune -o ! -name .DS_Store',
    \ 'down': '40%'
    \ }))
nnoremap <C-p> :FZFFileList<CR>
nnoremap <M-x><M-h> :History<CR>
nnoremap <M-x><M-b> :Buffers<CR>
