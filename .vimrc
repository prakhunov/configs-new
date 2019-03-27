"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('sjl/badwolf')
  call dein#add('hzchirs/vim-material')
  call dein#add('cnj4/horseradish256')
  call dein#add('zanglg/nova.vim')
  call dein#add('KeitaNakamura/neodark.vim')
  call dein#add('mhartington/oceanic-next')
  call dein#add('itchyny/lightline.vim')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('octol/vim-cpp-enhanced-highlight')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('Valloric/YouCompleteMe', { 'on_ft' : ['cs', 'javascript', 'typescript' ] })
  call dein#add('ludovicchabant/vim-gutentags')
  call dein#add('Galooshi/vim-import-js')
  call dein#add('vim-scripts/AutoComplPop')
  call dein#add('rust-lang/rust.vim')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('ensime/ensime-vim')
  call dein#add('derekwyatt/vim-scala')
  call dein#add('elixir-lang/vim-elixir')
  call dein#add('avdgaag/vim-phoenix')
  call dein#add('vim-erlang/vim-erlang-omnicomplete')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('tpope/vim-surround')
  call dein#add('alvan/vim-closetag')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('pangloss/vim-javascript')
  call dein#add('mxw/vim-jsx')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('othree/html5.vim')
  call dein#add('thaerkh/vim-workspace')
  call dein#add('tpope/vim-fugitive')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('luochen1990/rainbow')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

"set t_Co=256

if(has("termguicolors"))
  set termguicolors
endif

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

colorscheme OceanicNext 
"colorscheme neodark
"let g:neodark#use_256color = 1
"let g:neodark#terminal_transparent = 1
"set background=dark

syntax enable
set background=dark
set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set wildmenu
set ignorecase
set smartcase
set smartindent
set incsearch
set scrolloff=4
set wmh=0
set hidden
set title
set nocompatible
set completeopt=menu,menuone,longest
set rnu
set showcmd
set laststatus=2
set showtabline=4
set encoding=utf-8
set noshowmode
set list
set shell=sh

filetype on
filetype plugin on
filetype indent on

let g:clang_library_path='/usr/lib64/llvm/'
let g:clang_complete_auto = 1
let g:clang_complete_copen = 1
let g:clang_complete_macros = 1
let g:acp_behaviorKeywordLength = 3

"let g:ycm_filetype_blacklist = { '.h' : 1, '.cpp' : 1, '.c' : 1, '.hpp' : 1, 'c' : 1, 'cpp' : 1 }

set omnifunc=syntaxcomplete#Complete


"not sure what I was remapping here...
"inoremap <C-Space> <C-x><C-u>
"inoremap <C-@> <C-Space>

"map omnicomplete C-x C-o to ctrl space
"inoremap <C-Space> <C-x><C-o>
"inoremap <C-@> <C-Space>
inoremap <Nul> <C-n>

"cpp highlight

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1


"End dein Scripts-------------------------
"scala stuff
autocmd BufWritePost *.scala silent :EnTypeCheck
nnoremap <localleader>t :EnType<CR>

autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab  tabstop=2
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab  tabstop=2

"Open Nerd Tree
map <C-n> :NERDTreeToggle<CR>

"ctrl p stuff

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }

" ignores stuff in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"lightline stuff

let g:lightline = {
    \ 'colorscheme' : 'wombat',
    \ }

"multicursor config

let g:multi_cursor_start_word_key      = '<C-i>'
let g:multi_cursor_select_all_word_key = '<A-i>'
let g:multi_cursor_start_key           = 'g<C-i>'
let g:multi_cursor_select_all_key      = 'g<A-i>'
let g:multi_cursor_iext_key            = '<C-i>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"indent guides
let g:indent_guides_enable_on_vim_startup = 1


"vim workspace settings
"
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_session_directory = $HOME . '/.vim/sessions/'
let g:workspace_autosave_ignore = ['gitcommit']

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹ ",
    \ "Staged"    : "✚ ",
    \ "Untracked" : "✭ ",
    \ "Renamed"   : "➜ ",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖ ",
    \ "Dirty"     : "✗ ",
    \ "Clean"     : "✔︎ ",
    \ 'Ignored'   : '☒ ',
    \ "Unknown"   : "?"
    \ }

" tag closing filetypes
"
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,js'


" syntastic options

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

set tags=./tags;,tags;

let g:rainbow_active = 1
