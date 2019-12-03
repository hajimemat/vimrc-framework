scriptencoding = utf-8

" Include use statement
au NoraAutoCmd FileType php 
      \ nmap <buffer> <Leader>u :call phpactor#UseAdd()<CR>
" Invoke the context menu
au NoraAutoCmd FileType php 
      \ nmap <buffer> <Leader>mm :call phpactor#ContextMenu()<CR>

" Invoke the navigation menu
au NoraAutoCmd FileType php 
      \ nmap <buffer> <Leader>nn :call phpactor#Navigate()<CR>

" Goto definition of class or class member under the cursor
au NoraAutoCmd FileType php 
      \ nmap <buffer> <Leader>o :call phpactor#GotoDefinition()<CR>

" Show brief information about the symbol under the cursor
au NoraAutoCmd FileType php 
      \ nmap <buffer> <Leader>K :call phpactor#Hover()<CR>

" Transform the classes in the current file
au NoraAutoCmd FileType php 
      \ nmap <buffer> <Leader>tt :call phpactor#Transform()<CR>

" Generate a new class (replacing the current file)
au NoraAutoCmd FileType php 
      \ nmap <buffer> <Leader>cc :call phpactor#ClassNew()<CR>

" Extract expression (normal mode)
au NoraAutoCmd FileType php 
      \ nmap <buffer> <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
au NoraAutoCmd FileType php 
      \ vmap <buffer> <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>

" Extract method from selection
au NoraAutoCmd FileType php 
      \ vmap <buffer> <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>

au NoraAutoCmd FileType php setlocal omnifunc=phpactor#Complete
