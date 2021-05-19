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

	Plugin 'scrooloose/nerdtree'                     " File Navigation
	Plugin 'ctrlpvim/ctrlp.vim'                      " Fuzzy finding files , altern to NerdTree
	Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " Makes NerdTree Prettier
	Plugin 'ryanoasis/vim-devicons'                  " Adds glyphs to make vim prettier

	Plugin 'ervandew/supertab'                       " Tab completion in insert mode
	Plugin 'godlygeek/tabular'                       " Line up your text
	Plugin 'tpope/vim-surround'                      " surround stuff in quotes and brackets
	Plugin 'adelarsq/vim-matchit'                    " Extended matching for %

	Plugin 'scrooloose/nerdcommenter'                " Functions for commenting
	Plugin 'tpope/vim-commentary'                    " Comment multiple lines simultaneously

	Plugin 'junegunn/goyo.vim'                       " Focus Mode for vim
	Plugin 'junegunn/limelight.vim'                  " Dims non focused paragraphs
	Plugin 'ap/vim-css-color'                        " Displays rgb,hex colors highlighted
	Plugin 'liuchengxu/vista.vim'                    " Navigation using functions / classes etc

	Plugin 'RRethy/vim-illuminate'                   " Highlights other uses of word that cursor is over

	Plugin 'scrooloose/syntastic'                    " Linter
	Plugin 'sheerun/vim-polyglot'                    " Adds language support for a whole bunch of langs
	Plugin 'mboughaba/i3config.vim'                  " Syntax Highlighting for i3 config file
	Plugin 'McSinyx/vim-octave.git'                  " Allows octave syntax highligting
	Plugin 'LaTeX-Box-Team/LaTeX-Box'                " Bunch of latex related functionality
	Plugin 'xuhdev/vim-latex-live-preview'           " Live previews for LATEX
	Plugin 'honza/vim-snippets'                      " snippets base functionality
	Plugin 'SirVer/ultisnips'                        " snippets extensions
	Plugin 'itchyny/lightline.vim' 
	Plugin 'yggdroot/indentline'	
	"
"	Plugin 'nathanaelkane/vim-indent-guides'        " highlight alternating indentation
"	Plugin 'inside/vim-search-pulse'                " Makes current line pulse when you search
"	Plugin 'jiangmiao/auto-pairs'
"	Plugin 'powerline/powerline'
"	Plugin 'bling/vim-airline'
"	Plugin 'jreybert/vimagit'
"	Plugin 'neoclide/coc.nvim'
" https://github.com/Xuyuanp/nerdtree-git-plugin

	call vundle#end()
filetype plugin indent on
" }}}
" PLUGINS    : Settings --------------------------------------------------- {{{

" 	Syntastic settings                                                  {{{
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0


" Syntastic full language suppresion
let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] } 
"
" Syntastic warning suppresion : LATEX
let g:syntastic_quiet_messages = { "regex": [
	\ '\mpossible unwanted space at "{"',
	\ '\mCommand terminated with space.',
	\ '\mYou ought to remove spaces in front of punctuation.',
	\ '\mYou should put a space in front of parenthesis.',
	\ '\mWhitespace before punctation mark in " !"',
	\ '\mWhitespace before punctation mark in " ."',
	\ '\mYou should avoid spaces after parenthesis.',
	\ '\mYou should avoid spaces in front of parenthesis.',
	\ '\mWrong length of dash may have been used.',
	\ '\mVertical rules in tables are ugly.',
	\ '\mDelete this space to maintain correct pagereferences.',
\]}
" 
" }}}
" 	ultisnips settings                                                  {{{

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
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


" temp workaround for BG color change on exit
" check later to see if issue is solved
autocmd! User GoyoLeave source $HOME/.vimrc

let g:goyo_width = 100
let g:goyo_height = 100
"
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




"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!


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

" }}}

" MAPPINGS   : Plugins ---------------------------------------------------- {{{

map <silent> <F2> <ESC>:NERDTreeToggle<CR>

" auto switch to window on toggle open / close
autocmd VimEnter * wincmd w

map <silent> <F3> <ESC>:Vista!!<CR>
map <silent> <C-t> :Tab/
map <silent> <C-p> :CtrlP<CR>



" compile / interpret and run according to filetypes

autocmd FileType tex map <buffer> <F5> :LLPStartPreview <CR>

autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

autocmd FileType html map <buffer> <F5> :silent update<Bar>silent !firefox %:p &<CR>

"autocmd FileType sh map <buffer> <F5> ./%:t<CR>

" %:r returns filename
" %:t returns filename+extension
" second commented command compiles and runs , but does not allow for input , so
" is not really that useful
autocmd FileType c map <buffer> <F5> :!gcc -o %:r %:t<CR>
"autocmd FileType c map <buffer> <F5> :!gcc -o %:r % && ./%:r<CR>

autocmd FileType cpp map <buffer> <F5> :!g++ -o %:r %:t<CR>
"autocmd FileType cpp map <buffer> <F5> :!g++ -o %:r % && ./%:r<CR>
"
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
"nnoremap <silent> <C-h> <ESC>:if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<CR>

" system clipboard copy pasta
" need gvim installed to access + and * registers
" also needed xclip for nvim : https://github.com/neovim/neovim/issues/2704
nnoremap <C-c> "+y
vnoremap <C-c> "+y

" copy to both registers * and +
" cause you dont know which one the cur program uses and binding should always
" work
vnoremap <C-C> "*y :let @+=@*<CR>

"map <C-v> "+P

" to use . command over visual lines
vnoremap . :normal .<CR>








"}}}
" 	Visual Mode mappings                                                  {{{

" system clipboard copy pasta


" }}}
" }}}
" MAPPINGS   : Habit Breaking --------------------------------------------- {{{

noremap <Up>    :echo "YOU FOOL ! Use j"<cr>
noremap <Down>  :echo "YOU FOOL ! Use k"<cr>
noremap <Left>  :echo "YOU FOOL ! Use h"<cr>
noremap <Right> :echo "YOU FOOL ! Use l"<cr>

inoremap <Up>    <ESC> :echo "YOU FOOL ! Use j" <cr>
inoremap <Down>  <ESC> :echo "YOU FOOL ! Use k" <cr>
inoremap <Left>  <ESC> :echo "YOU FOOL ! Use h" <cr>
inoremap <Right> <ESC> :echo "YOU FOOL ! Use l" <cr>





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
set wrap

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

set confirm
" Display a confirmation dialog when closing an unsaved file.

set history=1000
" set undo limit

" persistent undos - undo after you re-open the file
set undofile

set cursorline
"highlight current line

set mousemodel=popup
" right-click brings up context menu

set encoding=utf-8
" file encoding as utf-8

set fileencoding=utf-8
" file encoding as utf-8

set termencoding=utf-8
" save and encode files as utf-8

set hidden
" dont unload buffer when switching array

set secure
" disable unsafe commands in local .vimrc files

set textwidth=80
" wraps lines after 80 characters

set foldmethod=marker

set showcmd
" show num highlighted lines in visual mode


" }}}
" SETTINGS   : Functional ------------------------------------------------- {{{



" }}}
" SETTINGS   : movement --------------------------------------------------- {{{

" return to the last line editied when reopening a file
augroup line_return
    au!
    au bufreadpost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup end

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


" }}}

" SETTINGS   : AESTHETICS : Basics / Color Scheme ------------------------- {{{

set t_Co=256                                                                    " " 256 colors in terminal
"colorscheme rupza                                                             " set colorscheme
"colorscheme monokai
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


"hi RedundantSpaces term=standout ctermbg=Grey guibg=#ffddcc

"call matchadd('RedundantSpaces', '\(\s\+$\| \+\ze\t\|\t\zs \+\)\(\%#\)\@!')
" Automatically deletes all trailing whitespace on save
" ( can cause vimrc commands to break)
" autocmd BufWritePre * %s/\s\+$//e

augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:⌴
    au InsertLeave * :set listchars+=trail:⌴
augroup END


" }}}
" SETTINGS   : AESTHETICS : Window Sizes --------------------------------- {{{

" auto-adjust splits when window is resized
" https://vi.stackexchange.com/questions/201/make-panes-resize-when-host-window-is-resized
autocmd VimResized * wincmd =
set equalalways

function! ToggleConcealLevel()
    if &conceallevel == 0
        setlocal conceallevel=2
    else
        setlocal conceallevel=0
    endif
endfunction

nnoremap <silent> <C-y> :call ToggleConcealLevel()<CR>

" }}}

" makes vim switch to matching bracket for half a second
set showmatch






" =============================================================================
" - EOF - EOF - EOF - EOF - EOF - EOF - EOF - EOF - EOF - EOF - EOF - EOF -
" =============================================================================
