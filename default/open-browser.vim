let g:openbrowser_browser_commands = [
\ {
\    'name': 'google-chrome-stable',
\    'args': ['{browser}', '{uri}']
\ }]
nmap <Leader>b <Plug>(openbrowser-smart-search)
vmap <Leader>b <Plug>(openbrowser-smart-search)
