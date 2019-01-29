" vim-plug Plugins
" ----------------

call plug#begin('~/.vim/plugged')

" Allows for compiling LaTeX on write
Plug 'lervag/vimtex'

" Makes it easy to comment out lines for various file types
Plug 'tpope/vim-commentary'

" Autocomplete
Plug 'Valloric/YouCompleteMe'

" Syntax checking
Plug 'vim-syntastic/syntastic'

" A bunch of settings that are well agreed upon
Plug 'tpope/vim-sensible'

call plug#end()

" My custom settings
" ------------------

" Use spaces instead of tabs
set tabstop=2 shiftwidth=2 expandtab smarttab

" Line numbers
set number

" Click to move cursor
set mouse=a

" Sort of forgot what this was for
" set completeopt-=preview

" Bar to indicate 80 character width
set colorcolumn=81

" Wrap at 80 characters
set tw=80

" Sometimes 80 is not desired though, so function and key map to toggle
function ToggleWrap()
  if (&tw == 80)
    set tw=0
  else
    set tw=80
  endif
endfunction

map <F9> :call ToggleWrap()<CR>

" I think this enables copy pasting with outside Vim
set clipboard=unnamedplus
