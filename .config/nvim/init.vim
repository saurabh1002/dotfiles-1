" --- VIM PLUG ---
call plug#begin()

" A simple, easy-to-use Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" Autocomplete
Plug 'ycm-core/YouCompleteMe'

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

call plug#end()



" --- CoC Config ---
let g:coc_global_extensions = [
    \ 'coc-pyright'
\ ]



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



" --- FOR BETTER LIFE ---
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>



" --- FOR PREVIEW WINDOW (YouCompleteMe) ---
set completeopt-=preview
