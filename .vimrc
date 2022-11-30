call plug#begin()
  Plug 'fatih/vim-go'
  Plug 'hashivim/vim-terraform'

  " vim-better-whitespace -
  " causes trailing whitespace characters to be highlighted
  Plug 'ntpeters/vim-better-whitespace'
call plug#end()

" display line numbers by default and bind \n to toggle them
:set nu
nmap <leader>n :set nu!<CR>
