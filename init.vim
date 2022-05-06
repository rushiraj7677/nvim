set background=dark    
set showbreak=↳\                " Pretty line break
set noruler                     " I already have my statusbar
set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
"SYNTAX/LAYOUT
set wrap                        " wrap visually
set linebreak                   " don't cut my words on wrap
set matchpairs+=<:>             " super-useful for html and markdown
"AUTOCOMPLETION
set infercase                   " smart case inferring
set wildmode=list:longest,full

filetype plugin indent on
syntax on
:set number
call plug#begin()
Plug 'luochen1990/rainbow'
Plug 'jreybert/vimagit'
Plug 'dbgx/lldb.nvim'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'roxma/nvim-yarp'
Plug 'arcticicestudio/nord-vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-commentary' 
Plug 'https://github.com/powerline/powerline'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'jacoborus/tender.vim'
Plug 'preservim/nerdtree'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'tomlion/vim-solidity'
Plug 'cespare/vim-toml'
Plug 'rakr/vim-one'
call plug#end()
let g:rustfmt_autosave = 1
let g:rust_clip_command = 'xclip -selection clipboard'
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
" Italics for my favorite color scheme
let g:palenight_terminal_italics=1
let g:palenight_color_overrides = {
\    'black': { 'gui': '#000000', "cterm": "0", "cterm16": "0" },
\}
" Start NERDTree and leave the cursor in it.
map <silent> <C-n> :NERDTreeToggle<CR>

syntax on
set t_Co=256
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme one
set background=dark " for the dark version
" set background=light " for the light version
" set background=light        " for the light version
let g:one_allow_italics = 1 " I love italic for comments
colorscheme one
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif

set background=dark " for the dark version
" set background=light " for the light version
colorscheme one

endif
set hidden
let g:racer_cmd = "/home/user/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1
au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1
let g:rainbow_active = 1
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
