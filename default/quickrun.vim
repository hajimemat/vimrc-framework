"
" vim-quickrun
"
" augroup QuickRunPHPUnit
"   autocmd!
"   autocmd BufWinEnter,BufNewFile *test.php set filetype=php.unit
"   autocmd BufWinEnter,BufNewFile *Test.php set filetype=php.unit
" augroup END

" vim-quickrun
nnoremap <Leader>run  :<C-u>QuickRun<CR>
" nnoremap <Leader>phpf :<C-u>QuickRun<Space>phpfixer<CR>
" nnoremap <Leader>phpi :<C-u>QuickRun<Space>phpinfo<CR>
" nnoremap <Leader>phpt :<C-u>QuickRun<Space>phpunit<CR>
" let g:quickrun_config = {
"       \    '_': {
"       \        'hook/close_buffer/enable_empty_data': 0,
"       \        'hook/close_buffer/enable_failure':    0,
"       \        'outputter':                           'multi:buffer:quickfix',
"       \        'outputter/buffer/close_on_empty':     1,
"       \        'outputter/buffer/split':              ':botright',
"       \        'runner':                              'job'
"       \    },
"       \    'php': {
"       \        'command':                             'php',
"       \        'exec':                                '%c %s',
"       \        'hook/close_buffer/enable_empty_data': 0,
"       \        'hook/close_buffer/enable_failure':    0,
"       \        'outputter':                           'buffer',
"       \        'outputter/buffer/close_on_empty':     0,
"       \        'outputter/buffer/into':               0,
"       \        'outputter/buffer/split':              ':botright 7sp'
"       \    },
"       \    'phpfixer': {
"       \        'command':                'php-cs-fixer',
"       \        'cmdopt':                 'fix',
"       \        'exec':                   '%c %o %s:p',
"       \        'outputter':              'buffer',
"       \        'outputter/buffer/into':  1,
"       \        'outputter/buffer/split': ':botright 7sp',
"       \        'runner':                 'system'
"       \    },
"       \    'phpinfo': {
"       \        'command':   'php',
"       \        'cmdopt':    '-info',
"       \        'exec':      '%c %o',
"       \        'outputter': 'buffer'
"       \    },
"       \    'phpunit': {
"       \        'command':   'phpunit',
"       \        'exec':      '%c %s',
"       \        'outputter': 'buffer'
"       \    },
"       \    'tmux': {
"       \        'command':   'tmux',
"       \        'exec':      '%c source %s',
"       \        'outputter': 'buffer'
"       \    }
"       \ }
