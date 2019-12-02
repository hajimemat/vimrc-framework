scriptencoding = utf-8
"
" 基本的な設定
"---------------------------------------------------------------------------
"
" ディレクトリ設定 {{{
"
" 一時ファイル置場なディレクトリ
let $TMP    = expand(g:tmp_dir)
" vim自動生成のバックアップディレクトリ
let $BACKUP = expand(g:backup_dir)
" vim自動生成のアンドゥファイル置場
let $UNDO   = expand(g:undo_dir)
" }}}
"
" キータイムアウト設定 {{{
" ^^^^^^^^^^^^^^^^^^^^ 
" 
" insertとnormalを行ったり来たりするのをすばやくする
" @see https://yukidarake.hateblo.jp/entry/2015/07/10/201356
set timeout timeoutlen=1000 ttimeoutlen=50
" }}}
"
" モードライン {{{
" ^^^^^^^^^^^^^^^^^^^^ 
"
" vimモードライン
" ファイルの最初や最後にvimの設定を埋め込める機能に
" 関する設定
"
" モードラインを有効にする
set modeline
" モードラインとして認識する範囲
set modelines=5 " 5業以内
" }}}

" 検索設定 {{{
" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
set ignorecase " 検索時に大文字小文字を無視
set smartcase  " ただし、検索文字に大文字小文字があれば無視しない
set nohlsearch " 検索文字をハイライトしない
" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" }}}
"
" 自動ファイル系の挙動 {{{
" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
"
" vimは自動的にファイルをいろいろ作る。
" バックアップ、コピー履歴、アンドゥ履歴など
" それらに関する設定
"
set directory=$TMP/             " ファイルロケーション
set backupdir=$BACKUP/          " バックアップディレクトリ
set noswapfile                  " Swapは使わない
set backup                      " バックアップは使う
set viminfo='100                " VIMレジストリ保持数
set viminfo+="1000              " VIMINFO保存ファイル
set viminfo+=n$TMP/info         " VimInfoファイル
" }}}

" バックスペースの挙動
set backspace=start,eol,indent  " バックスペースで削除可能なものを増やす
"

" バッファ共有のポリシー
set hidden                      " バッファを保存せずに移動できる
set autoread                    " 他の場所で更新されたら自動的に読み込む
"

" アンドゥの設定 {{{
" ^^^^^^^^^^^^^^^^^^^^
"
" ファイルを閉じてもアンドゥができるようにする
"
if has('persistent_undo')
  set undodir=$UNDO
  set undofile
endif
" }}}
"
" 表示設定
"
" Align for vim, gv/^" \  "
set tabstop=4                   " <TAB>サイズ
set softtabstop=4               " <TAB>入力時のサイズ
set shiftwidth=4                " 自動インデントサイズ
set expandtab                   " タブを空白に変換する
"
set number                      " 行番号を表示
"
set ruler                        " 最下部にカーソル位置を表示
"
"set nowrap                       " ウィンドウ幅で折り返さない
set wrap                         " ウィンドウ幅で折り返す
set textwidth=0                  " 固定折り返し文字幅を持たない
set scrolloff=16                 " スクロールバッファをもたせる
"
set splitright                   " 横分割は右に
set splitbelow                   " 縦分割は下に
"
set foldmethod=marker
set foldcolumn=0
set fillchars=vert:\|
" set foldlevel=0
" set foldnestmax=2
"
set showmatch                    " 対応する括弧などをハイライト表示する
set matchtime=3                  " 対応括弧のハイライト表示を3秒にする
set matchpairs& matchpairs+=<:>  " 対応括弧にg<'と'>'のペアを追加
"
set list                         " 不可視文字を表示
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
"
set laststatus=2                 " ステータスラインを表示
set cmdheight=1                  " コマンドエリアの高さ
set showcmd                      " タイプ中のコマンドを表示
set novisualbell                 " ベルを停止
set showmode                     " モードを表示
set noshowmode
set belloff=all                  " ベルを停止
"
" コマンドモードを見やすくする
set nowildmenu
set wildmode=list:longest,full
set wildoptions=tagfile
"set winwidth=30
"set winheight=20
set completeopt=menuone
set complete=.
"set pumheight=20
set cmdwinheight=5
set noequalalways
" Adjust window sizerof preview and help.
set previewheight=8
set helpheight=12
set ttyfast
"set display=lastline             " 長い行を@にしない
" }}}
