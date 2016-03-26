
"" Vim Stuff
set nocompatible
syntax on

" Enable filetype plugins
filetype plugin on
filetype indent on

" Vim Gui
set guioptions-=r       " Remove right-hand scroll bar
set guioptions-=L       " Remove left-hand scroll bar
set guioptions-=b       " bottom scroll bar
set number              " Show the line number
set showmatch           " Show matching brackets.
set autochdir           " automatically change window's cwd to file's dir
set confirm             " get a dialog when :q, :w, or :wq fails
set autoread            " Actualiza cambios realizados fuera de vim.

" List completions
set wildmenu
set wildmode=full
set wildignore=*.o,*~,*.pyc,*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=0
set shiftwidth=4
set shiftround
set expandtab

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disbale backups
set nobackup
set noswapfile
set nowritebackup

"" Fix backspace indent
set backspace=indent,eol,start

" Disable Scratch-Preview Documentation
set completeopt-=preview

"" Remove sounds effects
set noerrorbells
set visualbell

"" Testing features
set autoindent          " always set autoindenting on
set smartindent         " smart indent
set showcmd             " display incomplete commands
set ttyfast             " smoother changes

"" Set the init window size
set lines=38
set columns=95

"=========================================
"" Behaviours
"=========================================

" Left goes back to the en-prev line
set whichwrap+=<,>,h,l,[,]

" Remove blank spaces before save
autocmd BufWritePre * :%s/\s\+$//e


"=========================================
"" Mapping Keys
"=========================================

" Leader Mapping
let mapleader=' '

" Cursor moves accross the wrapped line {
    vmap <silent> <Right> l
    vmap <silent> <Left> h
    vmap <silent> <Up> gk
    vmap <silent> <Down> gj
    nmap <silent> <Right> l
    nmap <silent> <Left> h
    nmap <silent> <Up> gk
    nmap <silent> <Down> gj
    imap <silent> <Up> <C-o>gk
    imap <silent> <Down> <C-o>gj
"}

"" Split window horizonatal and vertical
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Buffer nav {
    "" Prev Buff
    noremap <leader>q :bp<CR>
    "" Next Buff
    noremap <leader>w :bn<CR>
    "" Close buffer
    noremap <leader>e :bd<CR>
" }

" shift+arrow Selection Mapping {
    nmap <S-Up>     gh<S-Up>
    nmap <S-Down>   gh<S-Down>
    nmap <S-Left>   v<C-g><Left>
    nmap <S-Right>  v<C-g><Right>

    vmap <S-Left>   <Left>
    vmap <S-Right>  <Right>
    vmap <S-Up>     gk
    vmap <S-Down>   gj

    imap <S-Up>     <Esc>gh<S-Up>
    imap <S-Down>   <Esc><Right>gh<S-Down>
    imap <S-Left>   <Esc>v<C-g><Left><Right>
    imap <S-Right>  <Right><Esc>v<C-g>
" }

" Keep Visual selection after shifting{
    vnoremap > <gv
    vnoremap < >gv
" }


"=========================================
"" Bundles Pluggins by Vim-Plug
"
" to install:
"     curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"=========================================

" Vim-Plug init
call plug#begin('~/.vim/plugged')

    " Vim Editor Enhancement
    Plug 'rking/ag.vim'
    Plug 'raimondi/delimitmate'
    Plug 'sjl/gundo.vim'
    Plug 'tpope/vim-commentary'
    Plug 'chiel92/vim-autoformat'
    Plug 'matze/vim-move'
    Plug 'tpope/vim-surround'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'easymotion/vim-easymotion'

    " NERD Tree File manager
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    " Control Version
    Plug 'cohama/agit.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'

    "Languajes Support
    Plug 'scrooloose/syntastic'
    Plug 'majutsushi/tagbar'
    Plug 'pangloss/vim-javascript'
    Plug 'ap/vim-css-color'
    Plug 'othree/html5.vim'

    " Code completion
    Plug 'ervandew/supertab'
    Plug 'vim-scripts/UltiSnips'
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'

    " Themes & Visual look and feel
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'altercation/vim-colors-solarized'
    Plug 'whatyouhide/vim-gotham'
"}

" Add plugins to &runtimepath
call plug#end()


"" Bundles Configuration

" Color scheme {
    "set background=dark        " Makes background dark
    "colorscheme solarized      " Classic Dark Solarized
    colorscheme gotham          " Gotham dark theme
"}

" Visual limit of 80 column (Load after colorscheme) {
    let &colorcolumn="80,".join(range(120,999),",")
    highlight ColorColumn ctermbg=235 guibg=#0A1F2C
" }

" Airline Status {
    set laststatus=2
    set guifont=Hack:h12

    let g:airline_powerline_fonts = 1
    let g:airline#extensions#syntastic#enabled = 1
    let g:airline#extensions#hunks#enabled = 1
    let g:airline#extensions#branch#enabled = 1
    let g:airline#extensions#tagbar#enabled = 1
" }

" NERDTree {
    map <leader>n :NERDTreeTabsToggle<CR>

    let g:NERDTreeQuitOnOpen = 1
    let g:NERDTreeAutoDeleteBuffer = 1
    let g:NERDTreeMinimalUI = 1
    let g:NERDTreeDirArrows = 1

    "" NERDTree Tabs
    let g:nerdtree_tabs_open_on_new_tab = 0
    let g:nerdtree_tabs_open_on_gui_startup = 0
" }

" Gundo {
    nnoremap <leader>u :GundoToggle<CR>

    set undodir=~/.vim/undodir
    set undofile
    set undolevels=1000
    set undoreload=10000
" }

" Tagbar CTags {
    nmap <leader>t :TagbarToggle<CR>

    let g:tagbar_autofocus = 1
" }

" Vim-Commentary Line {
    nmap <Leader>c <Plug>CommentaryLine
    xmap <Leader>c <Plug>Commentary
" }

" Vim-move {
	let g:move_key_modifier = 'C'
" }

" Syntastic {
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1

    " show any linting errors immediately
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

    " Python syntastic
    let g:syntastic_python_checkers=['python', 'flake8']
    let g:syntastic_python_flake8_post_args='--ignore=W391'

    " use jshint
    let g:syntastic_javascript_checkers = ['jshint']

" }

" Ultisnips {
" switch triggers to maintain compatibility with SuperTab & YCM
    " let g:UltiSnipsExpandTrigger       = "<c-j>"
    " let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
    " let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
"}

"============================================
"" Experimetal Stuff
"============================================

nnoremap <leader>a :Ag '' .

" Supertab {
    "let g:SuperTabDefaultCompletionType = "context"
    "let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
"    let g:SuperTabDefaultCompletionType='<c-x><c-o>'

    let g:SuperTabDefaultCompletionType = "context"
    let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
    let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
    let g:SuperTabContextDiscoverDiscovery = ["&omnifunc:<c-x><c-o>"]
" }

" SuperTab {
    "inoremap <C-Space> <C-x><C-o>
    "inoremap <C-@> <C-Space>

	" let g:SuperTabContextTextOmniPrecedence = ['&completefunc', '&omnifunc']
	" let g:SuperTabDefaultCompletionType = "context"
	" let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
	" let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
"	let g:SuperTabContextDefaultCompletionType = "<c-p>"
"	"let g:SuperTabLongestHighlight = 1
"	"let g:SuperTabLongestEnhanced = 1
" }

" OmniComplete {
    "if has("autocmd") && exists("+omnifunc")
        "autocmd Filetype *
            "\if &omnifunc == "" |
            "\setlocal omnifunc=syntaxcomplete#Complete |
            "\endif
    "endif

    " Popup menu hightLight Group
    "highlight Pmenu	ctermbg=13	guibg=DarkBlue
    "highlight PmenuSel	ctermbg=7	guibg=DarkBlue		guifg=LightBlue
    "highlight PmenuSbar ctermbg=7	guibg=DarkGray
    "highlight PmenuThumb			guibg=Black

    hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
    hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
    hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

    " some convenient mappings
    inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
    inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
    inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
    inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
    inoremap <expr> <C-d>	   pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
    inoremap <expr> <C-u>      pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"

    " and make sure that it doesn't break supertab
    let g:SuperTabCrMapping = 0

    " automatically open and close the popup menu / preview window
    au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
    set completeopt=menu,preview,longest
" }


"" Completions Stuff

" Omnicompletions {
    set omnifunc=syntaxcomplete#Complete
    autocmd FileType css,less setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
" }

" Stackoverflow:
" How to make ctrl + space: Autocomplete
" https://stackoverflow.com/questions/510503/ctrlspace-for-omni-and-keyword-completion-in-vim?rq=1
    inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
    \ "\<lt>C-n>" :
    \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
    \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
    \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
    imap <C-@> <C-Space>

