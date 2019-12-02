scriptencoding utf-8 " 設定ファイルの文字コードを宣言
" 
" キーマップ設定 {{{
"
" ミスタイプ対策 {{{
" F1を押し間違える対策
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" ;と:を押し間違える対策
nnoremap ; :
" w1はw!とする
cmap w1 w!
" q1はq!とする
cmap q1 q!
"
" 不要な操作を殺す
"
" ZZで終了させない
nnoremap ZZ <Nop>
" ZQで終了させない
nnoremap ZQ <Nop>
" QでEXモードに入れない
nnoremap Q <Nop>
" }}}
" 
" ノーマルモード用キーマップ {{{
"
" 編集モードからjjでエスケープ
inoremap jj    <ESC>
" いつでもc-lでエスケープ
inoremap <C-l> <ESC>
inoremap <C-l> <ESC>
vnoremap <C-l> <ESC>
" }}}
"
" カーソルの挙動 {{{
"
" 行移動は表示にあわせる
nnorema j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
"
" 右移動は折りたたみを開くも兼ねる
nnoremap <expr>l  foldclosed('.') != -1 ? 'zo' : 'l'
"
" vを二回で行末まで選択
vnoremap v $h
"
" }}}
"
" ターミナルモードの挙動 {{{
"---------------------------------------------------------------------------
" ターミナルモードの設定
tnoremap <C-l><C-l> <C-\><C-n>
tnoremap <C-w> <C-\><C-n><C-w>
" }}}

" ウィンドウ操作 {{{
" インサートモード中でも c-wが使えるようにする 
inoremap <c-w> <c-o><c-w>

" リサイズ
nmap <silent> <C-L> <C-w>>
nmap <silent> <C-H> <C-w><
nmap <silent> <C-K> <C-w>+
nmap <silent> <C-J> <C-w>>
" }}}
"
" }}}
"
