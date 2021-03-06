"===============================================================================
" Fugitive
"===============================================================================
if neobundle#tap('fugitive')
  function! neobundle#hooks.on_post_source(bundle)

    nnoremap <Leader>gb :Gblame<cr>
    nnoremap <Leader>gc :Gcommit<cr>
    nnoremap <Leader>gd :Gdiff<cr>
    nnoremap <Leader>gp :Git push<cr>
    nnoremap <Leader>gr :Gremove<cr>
    nnoremap <Leader>gs :Gstatus<cr>
    nnoremap <Leader>gw :Gwrite<cr>
    " Quickly stage, commit, and push the current file. Useful for editing .vimrc
    nnoremap <Leader>gg :Gwrite<cr>:Gcommit -m 'update'<cr>:Git push<cr>
  endfunction

  call neobundle#untap()
endif
