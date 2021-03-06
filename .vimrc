"===== 表示設定 =====
set number "行番号の表示
set title "編集中ファイル名の表示
set showmatch "括弧入力時に対応する括弧を示す
set list "タブ、空白、改行を可視化
set visualbell "ビープ音を視覚表示
set laststatus=2 "ステータスを表示
set ruler "カーソル位置を表示
"括弧の改行時のタブ補完
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

syntax on "コードに色をつける

"===== 文字、カーソル設定 =====
set fenc=utf-8 "文字コードを指定
set virtualedit=onemore "カーソルを行末の一つ先まで移動可能にする
set autoindent "自動インデント
set smartindent "オートインデント
set tabstop=4
set shiftwidth=4
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮ "不可視文字の指定
set whichwrap=b,s,h,l,<,>,[,],~ "行頭、行末で行のカーソル移動を可能にする
set backspace=indent,eol,start "バックスペースでの行移動を可能にする
let &t_ti.="\e[5 q" "カーソルの形状を変更
"通常モードのカーソル移動
noremap a ^
noremap e $
"入力モード時のカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
"git 行ハイライトを有効化する
"let g:gitgutter_highlight_lines = 1

"保存時自動import(go)
let g:go_fmt_command = "goimports"

"tab周りの設定
:set showtabline=2
hi TabLine     term=reverse cterm=reverse ctermfg=white ctermbg=black
hi TabLineSel  term=bold cterm=bold,underline ctermfg=5
hi TabLineFill term=reverse cterm=reverse ctermfg=white ctermbg=black
nmap <S-t> :tab
nmap <C-t> :tabe 
nmap <Tab> :tabn<CR>

"markdownのpreview
let g:previm_open_cmd = 'open -a Google\ Chrome'
nnoremap <silent> <C-p> :PrevimOpen<CR> " Ctrl-pでプレビュー

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'elixir-editors/vim-elixir'
Plug 'kannokanno/previm'
call plug#end()
