" --- VIM PLUG ---
call plug#begin()

" A simple, easy-to-use Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" Parenthesis pairs
Plug 'jiangmiao/auto-pairs'

" Change surrounding parenthesis
Plug 'tpope/vim-surround'

" To comment and comment out stuff
Plug 'tpope/vim-commentary'

" Syntax highlight
Plug 'sheerun/vim-polyglot'

" GruvBox theme
Plug 'morhetz/gruvbox'

" GruvBox Material theme
Plug 'sainnhe/gruvbox-material'

" Python autocomplete
Plug 'davidhalter/jedi-vim'

" Status line theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" AutoSave
Plug '907th/vim-auto-save'

" Python docstring
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }

call plug#end()



" --- CoC Config ---
let g:coc_global_extensions = [
    \ 'coc-pyright'
\ ]
" use <tab> to trigger completion and navigate to the next complete item
" <tab> could be remapped by another plugin, use :verbose imap <tab> to check if it's mapped as expected.
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"



" --- BEAUTIFY ---
set relativenumber
set autoindent expandtab tabstop=2 shiftwidth=2



" --- THEME ---
set background=dark
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_transparent_background=1
colorscheme gruvbox-material



" --- AIRLINE THEME ---
let g:airline_theme = 'gruvbox_material'
let g:airline_left_sep = ''



" --- Python docstring configuration
let g:pydocstring_formatter = 'sphinx'
let g:pydocstring_doq_path = '/home/luca/.local/bin/doq'



" --- FOR BETTER LIFE ---
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>



" --- FOR PREVIEW WINDOW (YouCompleteMe) ---
set completeopt-=preview
