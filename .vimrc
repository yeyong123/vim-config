
" Configuration file for vim
"let $PYTHONHOME="/Library/Frameworks/Python.framework/Versions/3.6"
"let $PYTHONHOME = "/Library/Frameworks/Python.framework/Versions/3.6/bin/python3"
set modelines=0   " CVE-2007-2438
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
function HeaderScriptTitle()
  call setline(1, "# coding:utf-8")
  call append(1, "# File Name: ".expand('%:t'))
  call append(2, "# Created Date: ".strftime('%Y-%m-%d %H:%M:%S'))
  call append(3, "# Last modified: ".strftime("%Y-%m-%d %H:%M:%S"))
  call append(4, "# Author: yeyong")
  normal G
  normal o
endf


function DateInsert()
  call cursor(4, 1)
  if search("Last modified") != 0
    let line = line('.')
    if (&filetype=="javascript"||&filetype=="go")
      call setline(line, "Last modified: ".strftime("%Y-%m-%d %H:%M:%S"))
    else
      call setline(line, "# Last modified: ".strftime("%Y-%m-%d %H:%M:%S"))
    endif
  endif
endf


function HeaderTitle()
  call setline(1, "/*")
  call append(1, "File Name: ".expand("%:t"))
  call append(2, "Created Date: ".strftime("%Y-%m-%d %H:%M:%S"))
  call append(3, "Author: yeyong")
  call append(4, "Last modified: ".strftime("%Y-%m-%d %H:%M:%S"))
  call append(5, "*/")
  normal G
  normal o
endf




set nocompatible  " Use Vim defaults instead of 100% vi compatibility
"set backspace=2    " more powerful backspacing
filetype on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'rust-lang/rust.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-projectionist'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'moll/vim-node'
Plugin 'godlygeek/tabular'
Plugin 'vim-syntastic/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'docunext/closetag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'rizzatti/dash.vim'
Plugin 'burnettk/vim-angular'
Plugin 'einars/js-beautify'
Plugin 'mxw/vim-jsx'
" vim-react-snippets:
Plugin 'justinj/vim-react-snippets'
Plugin 'Yggdroot/indentLine'

" SnipMate and its dependencies:
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'othree/xml.vim'
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'garbas/vim-snipmate'
Plugin 'slim-template/vim-slim'

" Other sets of snippets (optional):
"Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'fatih/vim-go'
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'posva/vim-vue'
Plugin 'chemzqm/wxapp.vim'
"Plugin 'othree/html'
"Plugin 'darthmall/vim-vue'
Plugin 'lilydjwg/colorizer'
Plugin 'leafgarland/typescript-vim'
Plugin 'tomlion/vim-solidity'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()
" Don't write backup file if vim is being called by "crontab -e"
"au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
"au BufWrite /private/etc/pw.* set nowritebackup
if has("syntax")
  syntax on
endif
syntax enable
"set background=dark
"colorscheme solarized
set noerrorbells
set vb t_vb=
set mouse=a
set number
set softtabstop=2
set tabstop=2
"20160113
set wildmenu
set wildmode=full
"new change
set shiftwidth=2
set expandtab
set cindent
set autoindent
set backspace=2
set smartindent
set ai!
set sm
set ruler
set incsearch
set hlsearch
set nowrapscan
set nocompatible
set hidden
set showcmd
"set tw=80 fo+=Mm
set guifont=PT_Mono:h13
"set guifont=Monaco:h12
"set guifont=Mono:h15
"set guifont=Courier_New:h18
set clipboard=unnamed
set lines=100 columns=278
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set guioptions=aAce
set linespace=8
set regexpengine=1
set tags=./tags;,tags;
"set transparency=10
"syntax line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:javascript_plugin_jsdoc = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_html_tidy_ignore_errors = ['proprietary attribute "myhotcompany-']
"syntax line

"let g:ycm_confirm_extra_conf=0
"set completeopt=longest,menu
"let g:ycm_path_to_python_interpreter='/usr/local/bin/python3.6'
"let g:ycm_seed_indentifiers_with_syntax=1
let g:syntastic_html_tidy_ignore_errors = [
      \  'plain text isn''t allowed in <head> elements',
      \  '<base> escaping malformed URI reference',
      \  'discarding unexpected <body>',
      \  '<script> escaping malformed URI reference',
      \  '</head> isn''t allowed in <body> elements'
      \ ]
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_python_checkers=['flake8', 'python3']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go', 'html'] }
let g:indentLine_char = "¦"
let g:indentLine_enabled = 1
let g:autopep8_disable_show_diff=1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:ctrlp_map = '<c-i>'
let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
"   \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
"   \ }
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
"let g:jsx_pragma_required = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:formatter_yapf_style='pep8'

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd FileType typescript :set makeprg=tsc
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
au BufNewFile *.py,*rb :call HeaderScriptTitle()
au BufNewFile *.js,*.go :call HeaderTitle()
autocmd FileWritePre,BufWritePre *.py,*.rb,*.js,*.go ks|call DateInsert()|'s

let g:indentLine_char='|'
let g:indentLine_enabled=1

"let g:nodejs_complete_config = {
"\  'js_compl_fn': 'jscomplete#CompleteJS',
"\  'max_node_compl_len': 15
"\}
"autocmd User Node
"  \ if &filetype == "javascript" |
"  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
"  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
"  \ endif
"
"
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /'%81v.\+/

"call pathogen#infect()
"set list
"set listchars=tab:>-,trail:-
"colorscheme  desert
"colorscheme  evening
"colorscheme  koehler
"colorscheme  pablo
"colorscheme  slate
"colorscheme  torte
colorscheme  molokai
set t_Co=256
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
"colorscheme  delek
execute pathogen#infect()
filetype indent on
filetype plugin on
filetype plugin indent on
map g<LeftMouse> <C-k>
map <F5> :NERDTreeToggle<CR>
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ctrlsf_ackprg = 'ag'
nmap <C-F> :CtrlSF<space>
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-A> :CtrlP<CR>
map <C-H> :tabp<CR>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>
nmap <leader>r <Plug>WxappReload
noremap <F3> :Autoformat<CR>
"au FileType go nmap <leader>r<Plug>(go-run)
