scriptencoding utf-8 " 設定ファイルの文字コードを宣言
"
" ファイルタイプ別設定 
" =========================================================================
"
" 拡張子とファイルタイプの関連付け {{{
" -------------------------------------------------------------------------
"
" tex
au NoraAutoCmd BufRead,BufNewFile *.tex set filetype=tex
" markdown
au NoraAutoCmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
" make
au NoraAutoCmd BufNewFile,BufRead *.mk set filetype=make
" twig
au NoraAutoCmd BufNewFile,BufRead *.twig set filetype=html
au NoraAutoCmd BufNewFile,BufRead *.ctp set filetype=html
au NoraAutoCmd BufNewFile,BufRead *.{yaml,yml,raml} set filetype=yaml
"
" }}}
"
" ファイルタイプ別インデント設定 {{{
" -------------------------------------------------------------------------
au NoraAutoCmd FileType c           setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType html        setlocal sw=2 sts=2 ts=4 et
au NoraAutoCmd FileType ruby        setlocal sw=2 sts=2 ts=2 et
au NoraAutoCmd FileType js          setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType zsh         setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType python      setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType scala       setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType json        setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType html        setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType css         setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType scss        setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType sass        setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType javascript  setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType php         setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType rst         setlocal sw=3 sts=3 ts=3 et
au NoraAutoCmd FileType make        setlocal sw=4 sts=4 ts=4 noexpandtab
au NoraAutoCmd FileType markdown    setlocal sw=2 sts=2 ts=2 et
au NoraAutoCmd FileType tex         setlocal sw=2 sts=2 ts=2 et
au NoraAutoCmd FileType vim         setlocal sw=2 sts=2 ts=2 et
au NoraAutoCmd FileType conf        setlocal sw=4 sts=4 ts=4 et
au NoraAutoCmd FileType yaml        setlocal sw=2 sts=2 ts=4 et
au NoraAutoCmd FileType raml        setlocal sw=2 sts=2 ts=4 et
" }}}
