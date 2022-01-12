" =============================================================================
"                                _
"                         __   _(_)_ __ ___  _ __ ___
"                         \ \ / / | '_ ` _ \| '__/ __|
"                          \ V /| | | | | | | | | (__
"                           \_/ |_|_| |_| |_|_|  \___|
"
" =============================================================================

" PLUGINS    : Declarations ----------------------------------------------- {{{
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'
	
	" File Navigation
	Plugin 'scrooloose/nerdtree'

	" Makes NerdTree Prettier
	Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

	" Adds glyphs to make vim prettier
	Plugin 'ryanoasis/vim-devicons'

	" Navigation using functions / classes etc
	Plugin 'liuchengxu/vista.vim'

	" Tab completion in insert mode
	Plugin 'ervandew/supertab'

	" Line up your text
	Plugin 'godlygeek/tabular'

	" surround stuff in quotes and brackets
	Plugin 'tpope/vim-surround'

	" Extended matching for %
	Plugin 'adelarsq/vim-matchit'

	" Automatically insert two of quotes , () , ...
	Plugin 'jiangmiao/auto-pairs'
	
	" Functions for commenting
	Plugin 'scrooloose/nerdcommenter'

	" Comment multiple lines simultaneously
	Plugin 'tpope/vim-commentary'

	" Displays rgb,hex colors highlighted
	Plugin 'ap/vim-css-color'

	" Highlights other uses of word that cursor is over
	Plugin 'RRethy/vim-illuminate'

	" shows how many times a search pattern occurs in the current buffer
	Plugin 'google/vim-searchindex'

	" Linter (Error checking + Warnings)
	Plugin 'dense-analysis/ale'

	" Adds language support for a whole bunch of langs
	Plugin 'sheerun/vim-polyglot'

	" Adds octave language support
	Plugin 'McSinyx/vim-octave.git'

	" Adds syntax Highlighting for i3 config file
	Plugin 'mboughaba/i3config.vim'

	" Bunch of latex related functionality
	Plugin 'LaTeX-Box-Team/LaTeX-Box'

	" Live previews for LATEX
	Plugin 'xuhdev/vim-latex-live-preview'

	" Allows live offline previews for markdown files
	Plugin 'instant-markdown/vim-instant-markdown', {'rtp': 'after'}

	" snippets base functionality
	Plugin 'honza/vim-snippets'

	" snippets extensions
	"Plugin 'SirVer/ultisnips'

	Plugin 'itchyny/lightline.vim'

	Plugin 'yggdroot/indentline'

	" shows chages to file since last git pull
	Plugin 'airblade/vim-gitgutter'

	" Extended . functionality
	Plugin 'tpope/vim-repeat'

	" Highlight flashes to indicate what was yanked
	Plugin 'machakann/vim-highlightedyank'

	" Better find f functionality
	Plugin 'rhysd/clever-f.vim'

	" Fuzzy find files and commands
	Plugin 'junegunn/fzf.vim'

	" Shows recently edited files as vim start screen
	Plugin 'mhinz/vim-startify'

	" Auto completion of funciton definitions
"	Plugin 'neoclide/coc.nvim', {'branch': 'release'}

	" incrementally highlights search results
"	Plugin 'haya14busa/incsearch.vim' 

	" Sets unique colors for brackets for easy identification
"	Plugin 'frazrepo/vim-rainbow'

	" Linter (Error checking + Warnings)
"	Plugin 'scrooloose/syntastic'

	" Dims non focused paragraphs
"	Plugin 'junegunn/limelight.vim'

	" highlight alternating indentation
"	Plugin 'nathanaelkane/vim-indent-guides'

	" Makes current line pulse when you search
"	Plugin 'inside/vim-search-pulse'

	" Focus Mode for vim
"	Plugin 'junegunn/goyo.vim'

	" Fuzzy finding files , altern to NerdTree
"	Plugin 'ctrlpvim/ctrlp.vim'

"	Plugin 'powerline/powerline'
"	Plugin 'bling/vim-airline'
"	Plugin 'jreybert/vimagit'


	call vundle#end()
filetype plugin indent on
" }}}
" PLUGINS    : Settings --------------------------------------------------- {{{

"     Latex Live Preview                                          {{{

let g:livepreview_previewer = 'evince'
let g:livepreview_use_biber = 1
"let g:livepreview_engine = 'pdflatex' . ' [options]'

" refresh time for latex live preview and git-gutter
set updatetime=750
"
" }}}
" 	Syntastic settings                                                  {{{
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0

" }}}
" 	ultisnips settings                                                  {{{

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" }}}
" 	indentline settings                                                 {{{


let g:indentLine_setColors = 1      " let colorscheme set colors
"let g:indentLine_color_term = 239   " line color
"let g:indentLine_bgcolor_term = 202 " background color
let g:indentLine_char = '┊'
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" }}}
" 	NerdTree settings                                                   {{{

"let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=0

"Automatically open NerdTree when opening a file in vim
" autocmd vimenter * NERDTree

"Auto close vim if only thing left open is NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" }}}
"     CtrlP Settings                                                      {{{

" set filetypes to ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.run
set wildignore+=*.mp3
set wildignore+=*.mp4,*.webm,*.mkv
set wildignore+=*.zip,*.tar,*.gzip,*.bz2
set wildignore+=*.jpg,*.png,*.jpeg,*.gif
set wildignore+=*.pptx,*.pdf,*.PDF,*.docx
set wildignore+=*.apkg

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" open in new tab
" Don't omit the e line to make sure you unbind beforehand.
" https://github.com/kien/ctrlp.vim/issues/646
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }



" }}}
"     Goyo + Limelight Settings                                           {{{

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1



" }}}
"     Octave syntax highlighting                                          {{{

"augroup filetypedetect
"  autocmd!
"  autocmd BufRead,BufNewFile *.m,*.oct setlocal filetype=octave
"augroup END


" }}}
"     Vista                                                               {{{

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction'
      \ },
      \ }


" }}}
"     Markdown Live Preview {{{

"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

" }}}


let g:highlightedyank_highlight_duration = 200

" highlighted yank colors (must be after set colorscheme)
highlight HighlightedyankRegion cterm=reverse gui=reverse



" }}}

" MAPPINGS   : Plugins ---------------------------------------------------- {{{

map <silent> <F2> <ESC>:NERDTreeToggle<CR>

" auto switch to window on toggle open / close
autocmd VimEnter * wincmd w

map <silent> <F3> <ESC>:Vista!!<CR>
map <silent> <C-t> :Tab/


" }}}
" MAPPINGS   : Compilation / Interpretation {{{

autocmd FileType tex map <buffer> <F5> :LLPStartPreview <CR>

autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

autocmd FileType html map <buffer> <F5> :silent update<Bar>silent !firefox %:p &<CR>

autocmd FileType markdown map <buffer> <F5> :silent update<Bar>silent !firefox %:p &<CR>

"autocmd FileType sh map <buffer> <F5> ./%:t<CR>

" second commented command compiles and runs , but does not allow for input , so
" is not really that useful for bigger programs , for short scripts sure
autocmd FileType c map <buffer> <F5> :!gcc -o %:r %:t<CR>
"autocmd FileType c map <buffer> <F5> :!gcc -o %:r % && ./%:r<CR>

autocmd FileType cpp map <buffer> <F5> :!g++ -o %:r %:t<CR>
"autocmd FileType cpp map <buffer> <F5> :!g++ -o %:r % && ./%:r<CR>

"autocmd FileType cs map <buffer> <F5> <CR>


" }}}
" MAPPINGS   : Convinience ------------------------------------------------ {{{
" 	Normal Mode mappings                                                  {{{

" Spell check
nnoremap <F9> <ESC>:setlocal spell! spelllang=en_us<CR>
nnoremap <F10> <ESC>:setlocal spell! spelllang=de<CR>

" resize splits
"nnoremap <C-j> <ESC>:vertical resize +5<CR>
"nnoremap <C-k> <ESC>:vertical resize -5<CR>

" this is not working ... why ?
nnoremap <C-h> <ESC>:vertical resize +5<CR>
nnoremap <C-l> <ESC>:vertical resize -5<CR>

" you want me to hit a key twice ?? really ?? really now ?
nnoremap <C-w> <ESC><C-w>w

" remaps to for easier misspelling navigation
" M is default bind for mid screen movements
nnoremap m ]s
nnoremap M [s
"nnoremap <C-m> z=

" $ just seems too far for my fingers given that these are such common commands
nnoremap D d$
nnoremap C c$
nnoremap Y y$

" jump to last non whitespace char in line
"nnoremap lL g_
"vnoremap lL g_

" cause fuck constantly ending up in insert mode
nnoremap o o<ESC>
nnoremap O O<ESC>

" Because my eyes see in visual lines and not logical lines
nnoremap k gk
nnoremap j gj

" I almost never need to delete a subset of a word so ...
nnoremap dw diw
nnoremap cw ciw
nnoremap yw yiw

" line\screen movement remaps
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" move around screen without moving cursor
" jk seemed unused and more intuitive
nnoremap <C-k> <C-e>
nnoremap <C-j> <C-y>

" search and replace all occurances in document
"nnoremap S <ESC>:%s///g<Left><Left>
nnoremap S <ESC>:%s///gc<Left><Left><Left>

" toggle highlighting of search results
" https://stackoverflow.com/questions/9054780/how-to-toggle-vims-search-highlight-visibility-without-disabling-it
" mapping conflict with resize splits c-h
"let hlstate=0
"nnoremap <silent> <C-y> <ESC>:if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<CR>

" system clipboard copy pasta
" need gvim installed to access + and * registers
" also needed xclip for nvim : https://github.com/neovim/neovim/issues/2704
nnoremap <C-c> "+y




"}}}
"     Visual Mode Mappings {{{

" search for currently highlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

vnoremap <C-c> "+y

" copy to both registers * and +
" cause you dont know which one the cur program uses and binding should always work
vnoremap <C-C> "*y :let @+=@*<CR>

"map <C-v> "+P

" to use . command over visual lines
vnoremap . :normal .<CR>
" }}}
" }}}

" SETTINGS   : Basic ------------------------------------------------------ {{{

syntax on
let mapleader = "-"
set nopaste
set number relativenumber

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" set the syntax to use smart casing
set smartcase

" wraps the text
"set wrap

" Always display the status bar
set laststatus=2

" show cursor position
set ruler

" show tab complete options as menu
set wildmenu

" lets the mouse wiggle
"set mouse=a

" show filename
set title

" Allow backspacing over indention, line breaks and insertion start.
set backspace=indent,eol,start

" Display a confirmation dialog when closing an unsaved file.
set confirm

" set undo limit
set history=1000

" persistent undos - undo after you re-open the file
set undofile

"highlight current line
set cursorline

" right-click brings up context menu
set mousemodel=popup

" file encoding as utf-8
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" dont unload buffer when switching array
set hidden

" disable unsafe commands in local .vimrc files
set secure

" wraps lines after 80 characters
"set textwidth=80

set foldmethod=marker

" show num highlighted lines in visual mode
set showcmd



" }}}
" SETTINGS   : Functional ------------------------------------------------- {{{



" }}}
" SETTINGS   : Movement --------------------------------------------------- {{{


" }}}
" SETTINGS   : Searching -------------------------------------------------- {{{

set hlsearch
set ignorecase
set incsearch

" }}}
" SETTINGS   : folding ---------------------------------------------------- {{{

set foldmethod=marker
set foldlevelstart=0

" space to toggle folds.

"nnoremap <Bslash> za
"vnoremap <Bslash> za

nnoremap <space> za
vnoremap <space> za

" make zo recursively open whatever fold we're in, even if it's partially open.
nnoremap zo zczo

" "focus" the current line.  basically:
" 1. close all folds.
" 2. open just the folds containing the current line.
" 3. move the line to a bit (25 lines) down from the top of the screen.


" this mapping wipes out the z mark, which i never use.
" i use :sus for the rare times i want to actually background vim.
function! FocusLine()
    let oldscrolloff = &scrolloff
    set scrolloff=0
    execute "keepjumps normal! mzzmzvzt25\<c-y><cr>"
    let &scrolloff = oldscrolloff
endfunction
nnoremap <c-z> :call FocusLine()<cr>

function! MyFoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction " }}}
set foldtext=MyFoldText()

" }}}
" SETTINGS   : Language Specific ------------------------------------------ {{{

" do not conceal in latex documents
let g:tex_conceal=""

" }}}

" SETTINGS   : AESTHETICS : Basics / Color Scheme ------------------------- {{{

set t_Co=256                                                                    " " 256 colors in terminal
colorscheme current

filetype plugin indent on                 " ???
:hi Normal guibg=NONE ctermbg=NONE        " make background transparent
set colorcolumn=+1                        " highlight the 81st column
:hi ColorColumn guibg=#262626 ctermbg=235 " color settings for 81st column highlight

" no scrollbars
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r


" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" }}}
" SETTINGS   : AESTHETICS : Tabs, Spaces, Wrapping ------------------------ {{{

"set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
set nosmarttab

set list
"set listchars=tab:┊\ ,eol:¬,extends:❯,precedes:❮
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮

hi RedundantSpaces term=standout ctermbg=Grey guibg=#ffddcc

"call matchadd('RedundantSpaces', '\(\s\+$\| \+\ze\t\|\t\zs \+\)\(\%#\)\@!')
" Automatically deletes all trailing whitespace on save
" ( can cause vimrc commands to break)
" autocmd BufWritePre * %s/\s\+$//e

augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:⌴
    au InsertLeave * :set listchars+=trail:⌴
augroup END

" makes vim switch to matching bracket for half a second
set showmatch

" }}}
" SETTINGS   : AESTHETICS : Window Sizes --------------------------------- {{{

" auto-adjust splits when window is resized
" https://vi.stackexchange.com/questions/201/make-panes-resize-when-host-window-is-resized
autocmd VimResized * wincmd =
set equalalways


" }}}

" stop hiding the code and showing fancy characters

function! ToggleConcealLevel()
	if &conceallevel == 0
		setlocal conceallevel=3
	else
		setlocal conceallevel=0
	endif
endfunction

nnoremap <silent> <C-y> :call ToggleConcealLevel()<CR>



" return to the last line editied when reopening a file
augroup line_return
    au!
    au bufreadpost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup end










" =============================================================================
" - EOF - EOF - EOF - EOF - EOF - EOF - EOF - EOF - EOF - EOF - EOF - EOF -
" =============================================================================
