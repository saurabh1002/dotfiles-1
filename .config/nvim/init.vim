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

" Status line theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" AutoSave
Plug '907th/vim-auto-save'

" Python docstring
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }

" Move consistently between windows in tmux and vim
Plug 'christoomey/vim-tmux-navigator'

" NERD Tree
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'

" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'BurntSushi/ripgrep'
Plug 'sharkdp/fd'
Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()



" --- Set Leader Key
let mapleader ="\<space>"



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
set number relativenumber
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
let g:pydocstring_enable_mapping = 0



" --- NERD Tree configuration
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-A-n> :NERDTreeToggle<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif



" --- CoC code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" --- CoC Autocompletion using TAB
function! CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackSpace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



" --- For telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>



" --- FOR BETTER LIFE ---
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>



" --- To Copy to Clipboard ---
set clipboard=unnamedplus



