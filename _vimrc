execute pathogen#infect() 

" Activate all the handy Windows key-bindings we're used to.
source $VIMRUNTIME/mswin.vim 

behave mswin

set showcmd                     " Show incomplete cmds down the bottom

" Display line and column number in bottom ruler.
set ruler

" Display the line numbers.
set number

" Activate syntax highlighting.
syntax enable

"JavaScript autocompleting
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

filetype plugin indent on

" Set a nice theme.
colorscheme gruvbox

if has("gui_running")
  " Set a nicer font.
  " set guifont=Consolas:h11:cDEFAULT
     set guifont=InputMono:h10
  "  set guifont=*

"  if has('gui_win32')
"   " set guifont=Input_Mono:h10:cANSI
"  " else
"    set guifont=Input\ Mono\ 10
"  endif

  " Hide the toolbar.
  set guioptions-=T
endif


" Set tabs to 2 characters and expand to spaces, activate smart indentation.
" See tabstop help for more info.
" Setting tabstop & softtabstop to the same value to avoid messy layout with mixed tabs & spaces.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

" Enabled folding on indent level. That way it works on any code & html, xml
" etc. 
" Setting foldlevelstart ensures that for newly opened files folds are open
" unless they are 10 levels deep.
set foldmethod=indent
set foldenable
set foldlevelstart=10
set foldnestmax=10      " no more than 10 fold levels please

" Turn sounds off.
set visualbell

" Shows a horizontal highlight on the line with the cursor.
set cursorline

" Use unicode/utf-8 encoding by default for keyboard, display and files.
set encoding=utf-8

" Activate case-insensitive & smart case search (if a capital letter is used
" in your search query, Vim will search case-sensitive).
set ignorecase 
set smartcase

" Set wildchar visual completion awesomeness.
" This is enhanced command line completion and it rocks.
set wildmenu 
set wildmode=full

" Turning on line wrapping and line-break for easy text-file editing.
" Line-break wraps full words at the end of a sentence for readability.
set wrap
set linebreak
""""""""""""""""""""""""""""""""""""""""""""
"Trick with:
"au GUIEnter * simalt ~x
"depends on Windows language.
"For my Polish version works:

au GUIEnter * simalt ~s

""""""""""""""""""""""""""""""""""""""""""""
" map <leader>rr :source ~\_vimrc<CR>

" source  $VIM\_vimrc

" Add a mapping to open a new tab with CTRL-T.

" map  :tabe 
" F11 toggles menu visibility
" nnoremap  :if &go=~#'m'set go-=melseset go+=mendif

" cd sets path to the path of the file in the current buffer.
" nnoremap cd :cd %:p:h
" Open the NERDTree on the path of the file in the current buffer.
" nnoremap t :NERDTree %:p:h

set history=100

":Explorer settings
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END


" NERDTree shortcut
map <F2> :NERDTreeToggle<CR>

" ctrlP settings
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" ignore node modlues git and DS_Store
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'


" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
" 0 or '' (empty string) - disable this feature.
" let g:ctrlp_working_path_mode = 'ra'
" ctrlP + NERDTree settings
 let g:NERDTreeChDirMode       = 2
 let g:ctrlp_working_path_mode = 'rw'
 let g:ctrlp_max_files=0

"""""""""""""""""""""

"Easy access to vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"Reload vimrc
nnoremap <leader>rv :source $MYVIMRC<cr>

" airline settings
" " Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" beautify indent guides
let g:indentLine_char = ' ︙'

