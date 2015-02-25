set mouse=a
set tags=tags
set tags+=./tags
set autochdir
" 檔案編碼
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
 
" 編輯喜好設定                                                                                                                                                                                                     
syntax on        " 語法上色顯示
set nocompatible " VIM 不使用和 VI 相容的模式
" set ai           " 自動縮排
set shiftwidth=4 " 設定縮排寬度 = 4 
set tabstop=4    " tab 的字元數
set softtabstop=4
set expandtab   " 用 space 代替 tab
 
set ruler        " 顯示右下角設定值
set backspace=2  " 在 insert 也可用 backspace
set ic           " 設定搜尋忽略大小寫
set ru           " 第幾行第幾個字
set hlsearch     " 設定高亮度顯示搜尋結果
set incsearch    " 在關鍵字還沒完全輸入完畢前就顯示結果
set smartindent  " 設定 smartindent
set cindent      " 设定cindent
set confirm      " 操作過程有衝突時，以明確的文字來詢問
set history=100  " 保留 100 個使用過的指令
"set cursorline   " 顯示目前的游標位置
colorscheme desert

"vundle configuration begi
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"environment
Bundle 'gmarik/Vundle.vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
"tex
Bundle 'gerw/vim-latex-suite'
"code complete
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
"filetree
Bundle 'scrooloose/nerdtree'
"python
Bundle 'klen/python-mode'
Bundle 'yssource/python.vim'
Bundle 'python_match.vim'
Bundle 'pythoncomplete'
"largefile
Bundle 'vim-scripts/LargeFile'
"swift
Bundle 'toyamarinyon/vim-swift'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"vundle configuration end
"
"for ycm
let g:ycm_global_ycm_extra_conf = '/Users/ember/.vim/.ycm_extra_conf.py'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
