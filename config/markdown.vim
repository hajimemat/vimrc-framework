scriptencoding utf-8 " 設定ファイルの文字コードを宣言

au NoraAutoCmd FileType markdown
      \ map <buffer> <silent><Leader>t :<C-U>Toc<CR>
au NoraAutoCmd FileType markdown
      \ map <buffer> <silent><Leader>p :<C-U>MarkdownPreview<CR>
