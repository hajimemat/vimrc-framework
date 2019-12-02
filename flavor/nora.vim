scriptencoding utf-8 " 設定ファイルの文字コードを宣言
"
" Noraスタイルのキーマップ
"
" defaultフレーバーを継承する
call LoadSource('flavor/default.vim')


" leaderキー
let g:nora#leader = '<SPACE>'
let g:nora#leader_on_insert = '<C-f>'
" subleaderキー
let g:nora#subleader = 's'
let g:nora#subleader_on_insert = '<C-s>'

" キーマップ拡張
noremap <NORA> <NOP>
" インサート時にも有効なプレフィックスキーを作成
execute   'map    '.g:nora#leader_on_insert.' <NORA>'
execute   'imap   '.g:nora#leader_on_insert.' <C-o>'.g:nora#leader_on_insert
" <NORA>とキーを割り当てる
execute   'nnoremap  '.g:nora#leader.'       <NOP>'
execute   'nmap       '.g:nora#leader.'       <NORA>'
execute   'vmap       '.g:nora#leader.'       <NORA>'
" 仮想キー<SUBNORA>を生み出す
noremap <SUBNORA> <NOP>
nnoremap <SUBNORA> <NOP>
cnoremap <SUBNORA> <NOP>
execute   'map    '.g:nora#subleader_on_insert.' <SUBNORA>'
execute   'imap   '.g:nora#subleader_on_insert.' <C-o>'.g:nora#subleader_on_insert
execute 'nnoremap '.g:nora#subleader.'   <NOP>'
execute 'nmap '.g:nora#subleader.'   <SUBNORA>'
execute 'vmap '.g:nora#subleader.'   <SUBNORA>'
map <NORA>s <SUBNORA>

if dein#tap('tcomment_vim') " TComment {{{
  let g:tcomment_maps = 0
  nnoremap <silent><NORA>co :TComment<CR>
  vmap <silent><NORA>co :TComment<CR>
endif " }}}

if dein#tap('nerdtree') " NERDTree {{{
  map <SUBNORA>e :<C-u>NERDTreeToggle<CR>
  map <SUBNORA><s-e> :<C-u>NERDTreeFind<CR>
endif " }}}

" <NORA>{f,h,b,m,a,l}を定義
if dein#tap('fzf') " FZF {{{
  map <NORA><C-f> :<C-u>Files<CR>
    map <NORA>f :<C-u>Files<CR>
    map <NORA>h :<C-u>History<CR>
    map <NORA>b :<C-u>Buffers<CR>
    map <NORA>m :<C-u>Maps<CR>
    map <NORA>a :<C-u>Ag<CR>
    map <NORA>l :<C-u>Lines<CR>
    "
    " FZF 拡張用の関数
    "
    function! s:find_git_root()
    return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
    endfunction
    command! ProjectFiles execute 'Files' s:find_git_root()
    map <NORA>p :<C-u>ProjectFiles<CR>
endif " }}}


" <NORA>g{g}を定義
if dein#tap('vim-fugitive')
  map <NORA>gg :<C-u>Gstatus<CR>
  map <NORA>gc :<C-u>Gcommit<CR>
  map <NORA>gp :<C-u>Gpush<CR>
  map <NORA>gl :<C-u>Glog<CR>
  map <NORA>gw :<C-u>Gwrite<CR>
endif


"   if nora#enable_php " PHPの設定 {{{
"     if dein#tap('ale') " PHP用のALE設定 {{{
"       " phpのシンタックスなどをチェック
"       let g:ale_linters['php'] = ['php','phpcs','phpmd']
"       " phpcbfで自動整形
"       let g:ale_fixers['php'] = ['phpcbf']
"       " コーディング規約
"       let g:ale_php_phpcs_standard = 'psr2' " PSR2準拠
"       let g:ale_php_phpcbf_standard = 'psr2' " PSR2準拠
"       " phpmdのチェックルール
"       let g:ale_php_phpmd_ruleset = 'codesize,design,unusedcode,naming'
"     endif " }}}
"     if dein#tap('phpactor') " PHPActorの設定 {{{
"       augroup MyAutoCmd
"         " use文を追加する
"         autocmd FileType php map <SUBNORA>u :call phpactor#UseAdd()<CR>
"         " 処理メニューを開く
"         autocmd FileType php map <SUBNORA>mm :call phpactor#ContextMenu()<CR>
"         " ナビゲーションメニューを開く
"         autocmd FileType php map <SUBNORA>nn :call phpactor#Navigate()<CR>
"         " タグジャンプ
"         autocmd FileType php map <SUBNORA>o :call phpactor#GotoDefinition()<CR>
"         " ホバー
"         autocmd FileType php map <SUBNORA>k :call phpactor#Hover()<CR>
"         " クラスファイル操作
"         autocmd FileType php map <SUBNORA>tt :call phpactor#Transform()<CR>
"       augroup END
"     endif " }}}
"     if dein#tap('vim-test') " PHPtestの設定 {{{
"       let test#strategy = "dispatch"
"       let g:dispatch_compilers = {
"         \ './bin/phpunit': 'phpunit',
"         \ './vendor/bin/phpunit': 'phpunit'
"         \}
"       autocmd MyAutoCmd BufNewFile,BufRead *Test.php setlocal ft=php.phpunit
"       let g:quickrun_config = {}
"       let g:quickrun_config['_'] = {
"             \ 'runner'    : 'vimproc',
"             \ 'runner/vimproc/updatetime' : 60,
"             \ 'outputter' : 'error',
"             \ 'outputter/error/success' : 'buffer',
"             \ 'outputter/error/error'   : 'quickfix',
"             \ 'outputter/buffer/split'  : ':rightbelow 8sp',
"             \ 'outputter/buffer/close_on_empty' : 1,
"             \ }
"       let g:quickrun_config['php.phpunit'] = {
"             \ 'hook/cd/directory'              : '%S:p:h',
"             \ 'command'                        : 'phpunit',
"             \ 'cmdopt'                         : '',
"             \ 'exec'                           : '%c %o %s',
"             \ 'outputter/quickfix/errorformat' : '%f:%l,%m in %f on line %l',
"             \}
"        autocmd FileType php map <SUBNORA>r :QuickRun<CR>
"     endif " }}}
"
"     if dein#tap('vim-dispatch') " 設定 {{{ 
"       map <SUBNORA>d :Dispatch 
"     endif " }}}
"   endif " }}}
"
"   if nora#enable_js " JSの設定 {{{
"     if dein#tap('ale') " JS用のALE設定 {{{
"       let g:ale_fixers['javascript'] = ['prettier-eslint']
"       let g:ale_fix_on_save = 1
"       let g:ale_javascript_prettier_use_local_config = 1
"     endif " }}}
"   endif  " }}}
"
"   if nora#use_fzf " FZFの設定 {{{
"   endif " }}}
"
"   nmap <NORA>gw :<C-u>Gwrite<CR>
"   nmap <NORA>gc :<C-u>Gcommit<CR>
"   nmap <NORA>gp :<C-u>Gpush<CR>
"
"   if nora#use_nerd_tree " NERDTreeの設定 {{{
"   endif " }}}
"
"   if nora#use_memolist " メモリストの設定 {{{
"     if dein#tap('memolist.vim') " {{{
"       nnoremap <SUBNORA>mn :MemoNew<CR>
"       nnoremap <SUBNORA>ml :MemoList<CR>
"       nnoremap <SUBNORA>mg :MemoGrep<CR>
"     endif " }}}
"   endif " }}}
"
"   if nora#use_fugitive " メモリストの設定 {{{
"     if dein#tap('vim-fugitive') " {{{
"       nnoremap <SUBNORA>g :Gstatus<CR>
"     endif " }}}
"   endif " }}}
"
"   if nora#use_http_client " HTTP Clientの設定 {{{
"     if dein#tap('nerdtree') " {{{
"       map <NORA>tt :<C-u>HTTPClientDoRequest<CR>
"     endif " }}}
"   endif " }}}
" " }}}

