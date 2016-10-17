" deoplete.nvim
let g:deoplete#enable_at_startup = 1
let g:tern_request_timeout = 1

" vim-fugitive
" Automatically remove fugitive buffers from the buffer list
augroup plugin_fugitive
  autocmd!
  autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END

" neomake
autocmd! BufWritePost * Neomake
let g:neomake_verbose = 0
let g:neomake_javascript_enabled_makers = ['eslint_d', 'eslint']
let g:neomake_jsx_enabled_makers = ['eslint_d', 'eslint']

" vim-move
nmap <M-j> <Plug>MoveLineDown
nmap <M-k> <Plug>MoveLineUp
vmap <M-j> <Plug>MoveBlockDown
vmap <M-k> <Plug>MoveBlockUp

" vim-jsbeautify
augroup plugin_jsBeautify
  autocmd!
  autocmd FileType javascript noremap <buffer>  <leader>bj :call JsBeautify()<cr>
  " for html
  autocmd FileType html noremap <buffer> <leader>bh :call HtmlBeautify()<cr>
  " for css or scss
  autocmd FileType css noremap <buffer> <leader>bc :call CSSBeautify()<cr>
augroup END

" consolate-vim
nnoremap <leader>c :Consolate<cr>

" ctrlp
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window = 'results:100'

" vim-jsx
let g:jsx_ext_required = 0
