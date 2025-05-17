"""
" VIMRC CONFIGURATION FILE
"""

"""
" BEGINS VIM PLUG CONFIGURATION
"""
call plug#begin()

"""
" DEFINES EDITORCONFIG VIM PLUGIN
"""
Plug 'editorconfig/editorconfig-vim'

"""
" DEFINES NERDTREE VIM PLUGIN
"""
Plug 'preservim/nerdtree'

"""
" DEFINES EVERFOREST VIM PLUGIN
"""
Plug 'sainnhe/everforest'

"""
" DEFINES SONOKAI VIM PLUGIN
"""
Plug 'sainnhe/sonokai'

"""
" DEFINES POLYGLOT VIM PLUGIN
"""
Plug 'sheerun/vim-polyglot'

"""
" DEFINES FUGITIVE VIM PLUGIN
"""
Plug 'tpope/vim-fugitive'

"""
" DEFINES RHUBARB VIM PLUGIN
"""
Plug 'tpope/vim-rhubarb'

"""
" DEFINES SENSIBLE VIM PLUGIN
"""
Plug 'tpope/vim-sensible'

"""
" DEFINES AIRLINE VIM PLUGIN
"""
Plug 'vim-airline/vim-airline'

"""
" ENDS VIM PLUG CONFIGURATION
"""
call plug#end()

"""
" DISABLES COMPATIBLE MODE
"""
set nocompatible

"""
" DISABLES VIMINFO GENERATION
"""
set viminfofile=NONE

"""
" ENABLES 256 COLORS
"""
set t_Co=256

"""
" ENABLES AUTOIDENT
"""
autocmd FileType plugin indent on

"""
" ENABLES LINE NUMBER DISPLAY
"""
set number

"""
" ENABLES TERM GUI COLORS
"""
if has('termguicolors')
  set termguicolors
endif

try
  """
  " ENABLES SONOKAI BETTER PERFORMANCE
  """
  let g:sonokai_better_performance=1

  """
  " ENABLES ANDROMEDA SONOKAI STYLE
  """
  let g:sonokai_style='andromeda'

  """
  " ENABLES SONOKAI COLORSCHEME
  """
  colorscheme sonokai

  """
  " ENABLES SONOKAI AIRLINE THEME
  """
  let g:airline_theme='sonokai'
catch
endtry

"""
" ENABLES RULER
"""
set ruler

"""
" ENABLES SYNTAX HIGHLIGHT
"""
syntax on
