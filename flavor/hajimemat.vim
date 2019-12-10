scriptencoding utf-8 " 設定ファイルの文字コードを宣言

" Noraフレーバーを継承する
call LoadSource('flavor/nora.vim')
call LoadToml('flavor/hajimemat')

" Keymap 
"
" Emacs Bindを試す
"
" - https://qiita.com/kentarosasaki/items/785d8c1e1c4433df6ac9
" - https://sites.google.com/site/fudist/Home/vim-nihongo-ban/tips/vim-key-emacs
" {{{
" insert mode
" imap <C-p> <Up>
" imap <C-n> <Down>
" imap <C-b> <Left>
" imap <C-f> <Right>
" imap <C-a> <C-o>:call <SID>home()<CR>
" imap <C-e> <End>
" imap <C-d> <Del>
" imap <C-h> <BS>
" imap <C-k> <C-r>=<SID>kill()<CR>
"
" function! s:home()
"   let start_column = col('.')
"   normal! ^
"   if col('.') == start_column
"     normal! 0
"   endif
"   return ''
" endfunction
"
" function! s:kill()
"   let [text_before, text_after] = s:split_line()
"   if len(text_after) == 0
"     normal! J
"   else
"     call setline(line('.'), text_before)
"   endif
"   return ''
" endfunction
"
" function! s:split_line()
"   let line_text = getline(line('.'))
"   let text_after  = line_text[col('.')-1 :]
"   let text_before = (col('.') > 1) ? line_text[: col('.')-2] : ''
"   return [text_before, text_after]
" endfunction
"
" }}}

" 見た目 {{{
au NoraAutoCmd VimEnter * nested colorscheme jellybeans
" au NoraAutoCmd VimEnter * nested colorscheme hybrid
" au MyAutoCmd BufReadPost markdown map <NORA><C-s> :aaaaaa
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'
"
let g:airline_solarized_bg='dark'
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts=1
" }}}

" Netrw {{{
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" " let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 10
" augroup ProjectDrawer
"    autocmd!
"    autocmd VimEnter * :Vexplore
" augroup END
" " netrw magic
" " enable mouse usage. makes it easier to browse multiple tabs
" set mouse=a
" " " hide netrw top message
" let g:netrw_banner=0
" " " tree listing by default
" let g:netrw_liststyle=3
" " " hide vim swap files
" let g:netrw_list_hide='.*\.swp$,.git\/'
" " " open files in left window by default
" " let g:netrw_chgwin=1
" " " remap shift-enter to fire up the sidebar
" nnoremap <silent> <S-CR> :rightbelow 20vs<CR>:e .<CR>
" " " the same remap as above - may be necessary in some distros
" nnoremap <silent> <C-M> :rightbelow 20vs<CR>:e .<CR>
" " " remap control-enter to open files in new tab
" nmap <silent> <C-CR> t :rightbelow 20vs<CR>:e .<CR>:wincmd h<CR>
" " " the same remap as above - may be necessary in some distros
" nmap <silent> <NL> t :rightbelow 20vs<CR>:e .<CR>:wincmd h<CR>
" "Toggles explorer buffer
" function! ToggleVExplorer()
"   if exists("t:expl_buf_num")
"     let expl_win_num = bufwinnr(t:expl_buf_num)
"     if expl_win_num != -1
"       let cur_win_nr = winnr()
"       exec expl_win_num . 'wincmd w'
"       close
"       exec cur_win_nr . 'wincmd w'
"       unlet t:expl_buf_num
"     else
"       unlet t:expl_buf_num
"     endif
"   else
"     exec '1wincmd w'
"     Vexplore
"     let t:expl_buf_num = bufnr("%")
"   endif
" endfunction
"
" "Set default width of explorer to make it appear like a sidebar. Also defaults to tree style.
" let g:netrw_liststyle=3
" let g:netrw_winsize=20
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
"
" "Lastly, set a key mapping for calling the function above
" noremap <silent> <C-E> :call ToggleVExplorer()<CR>
" }}}
