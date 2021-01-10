" .vimrc file by Chengjun
" updated: 2020-03-03

"http://www.vimbits.com/

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %


" insert automatically
if has("autocmd")
augroup content
autocmd BufNewFile *.py
\ 0put = '# -*- coding: utf-8 -*-' |
\ $put = '' |
\ $put = '' |
\ norm gg19jf]
augroup END
endif




" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

"" set pastetoggle=<F2>
"" set clipboard=unnamed


" Mouse and backspace
"set mouse=a  " on OSX press ALT and click
"set bs=2     " make backspace behave like normal again


" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

"" map the ack search shortcut
nmap <Leader>a :Ack<space>-i<space>

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-h> :nohl<CR>
vnoremap <C-h> :nohl<CR>
inoremap <C-h> :nohl<CR>


" Quicksave command
""noremap <C-Z> :update<CR>
""vnoremap <C-Z> <C-C>:update<CR>
""inoremap <C-Z> <C-O>:update<CR>


" Quick quit command
"" noremap <Leader>e :quit<CR>  " Quit current window
"" noremap <Leader>E :qa!<CR>   " Quit all windows


" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


"" map sort function to a key
"vnoremap <Leader>s :sort<CR>



" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod


" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

" Run python within vim
autocmd FileType python nnoremap <buffer> <C-r> :exec '!clear; python' shellescape(@%, 1)<cr>


" Showing line numbers and length
set number relativenumber  " show line numbers
set tw=79   " width of document (used by gd)
" set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233


" easier formatting of paragraphs
vmap Q gq
nmap Q gqap


" Useful settings
set history=700
set undolevels=700


" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" allow backspacing over everything in insert mode
set backspace=indent,eol,start


" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()
" call pathogen#helptags()

" ============================================================================
" Python IDE Setup
" ============================================================================
" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2

" ============
" file search
" ============
"" Settings for ctrlp: ctrl+p
"" cd ~/.vim/bundle
"" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" ============
" text search
" ============
"" ack.vim 
"" git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim

""" if use ag:
""" brew install the_silver_searcher 
"if executable('ag')
  "let g:ackprg = 'ag --vimgrep'
"endif



"" For checkers, using flake8, press <F7>
"" cd ~/.vim/bundle
"" sudo pip install flake8
"" git clone git://github.com/nvie/vim-flake8.git
"" autocmd BufWritePost *.py call Flake8()

"" not in use
"" Python folding: f and F
"" mkdir -p ~/.vim/ftplugin
"" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
"set nofoldenable 
"set foldnestmax=1


"" Slimux
"" This should be work with Tmux
"" cd ~/.vim/bundle
"" git clone https://github.com/epeli/slimux.git
"map <Leader>s :SlimuxREPLSendLine<CR>
"" work around ipython 5 broken
"vnoremap <Leader>s :<C-w>SlimuxShellRun %cpaste<CR>:'<,'>SlimuxREPLSendSelection<CR>:SlimuxShellRun --<CR>
"" vmap <Leader>s :SlimuxREPLSendSelection<CR>
"map <Leader>b :SlimuxREPLSendBuffer<CR>
"map <Leader>a :SlimuxShellLast<CR>
"map <Leader>k :SlimuxSendKeysLast<CR>

" ===================
" file system
" ===================
"" Nerdtree: files management: ctrl-n
"" git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" nerdtree-git
"" git file status in the nerdtree
"" git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']

"" vim-gitgutter
"" git file status
"" cd ~/.vim/bundle
"" git clone git://github.com/airblade/vim-gitgutter.git
set updatetime=100

"" nerdcommenter: <Leader>cc, <Leader>cu 
"" cd ~/.vim/bundle
"" git clone https://github.com/scrooloose/nerdcommenter.git


" ================
" static checks
" ================
"" syntastic
"" cd ~/.vim/bundle && \
"" git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0 
let g:syntastic_check_on_wq = 0 
let g:syntastic_python_checkers = []
"let g:syntastic_python_checkers = ['pylint']


" ================
" tags 
" ================
"" tagbar
"" Install ctag first, then install tagbar
"" brew install ctags
"" git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
nmap <F8> :TagbarToggle<CR>


" ========================
" auto-complete
" ========================
" jedi
" git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim
let g:jedi#auto_initialization = 1 
let g:jedi#completions_enabled = 1 
autocmd FileType python setlocal completeopt-=preview
let g:pymode_rope = 0

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

"let g:jedi#show_call_signatures = "2"
"let g:jedi#popup_select_first = 0


" ==============
" auto-pairs
" =============
" git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs


" =======================
" git
" =======================
" -- git command on current file
fun! GitCommand(command)
  silent! !clear
  exec "!git " . a:command . " %"
endfun
" -- git diff for current file
"map <leader>d :call GitCommand("diff") <CR>
" -- git log for current file
map <leader>l :call GitCommand("log -p") <CR>
" -- git blame for current file
map <leader>b :call GitCommand("blame") <CR>"
