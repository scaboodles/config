set scrolloff=3

if has('termguicolors')
    set termguicolors
    colorscheme pasty
endif

set undofile
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

" Indentation settings for using 4 spaces instead of tabs.
set shiftwidth=4
set softtabstop=4
set expandtab

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set autoindent
set smartindent
set number

set title
set titlestring=%r\ %t\ %h\ %w
let g:netrw_keepdir=0

" Copied from :help abbreviations
func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc


" Don't set 'modified' when reading from stdin
au StdinReadPost * set nomodified
call plug#begin()
Plug 'yegappan/mru'
Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
Plug 'rust-lang/rust.vim'
Plug 'folke/lsp-colors.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-rooter'
Plug 'tomlion/vim-solidity'
Plug 'jremmen/vim-ripgrep'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
call plug#end()

syntax on
filetype plugin indent on
set mouse=a

set foldlevelstart=1
set fillchars=fold:┄

lua << EOF
require('telescope').setup {
    defaults = {
        sorting_strategy = "descending",
        preview = false,
        mappings = {
            i = {
                ["<C-k>"] = require('telescope.actions').move_selection_previous,
                ["<C-j>"] = require('telescope.actions').move_selection_next,
            },
        }
    },
    pickers = {
        buffers = {
            sort_mru = true,
            ignore_current_buffer = true,
        }
    },
}

require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

local function cwd_line()
  local wd = vim.fn.getcwd() 
  local homey = string.gsub(wd, "/Users/adam", "")
  local sp = vim.fn.pathshorten(homey)
  return sp
end

require('lualine').setup {
  options = {
    icons_enabled = true,
  },
  sections = {
    lualine_a = { cwd_line },
    lualine_b = {
      {
        'diff', 
        colored = false,
        symbols = {added = 'ﰃ', modified = '', removed = ''},
      },
      'diagnostics'},
  }
}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

EOF

noremap  :MRU<CR>
noremap  :Telescope buffers<CR>

set signcolumn=no

let mapleader = " "
"open new line without exiting normal mode"
nnoremap <Leader>o o<Esc>0"_D<Up><End>
nnoremap <Leader>O O<Esc>0"_D<Down><End>

