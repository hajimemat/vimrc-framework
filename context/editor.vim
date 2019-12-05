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

function! SourceGitVimrc(dir)
  let gitroot = system('cd ' . fnameescape(a:dir) . '; git rev-parse --show-toplevel 2>/dev/null')
  " Strip trailing newline and escape
  let gitroot = substitute(gitroot, '\\n*$','','')
  if strlen(gitroot) && filereadable(gitroot . '/.vimrc')
    execute 'source ' . fnameescape(gitroot) . '/.vimrc'
  endif
endfunction 

au NoraAutoCmd BufRead * call SourceGitVimrc(expand("<afile>:p:h"))

" TOML
call LoadToml('context/editor')
call LoadToml('nerdtree')

if (g:nora_vim_enable_markdown)
    call LoadToml('markdown')
    call LoadSource('config/markdown.vim')
endif
