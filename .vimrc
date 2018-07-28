" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" クリップボードと連携する"
set clipboard+=unnamed
"" ビープ音を可視化
"set visualbell
"" visual bellを無効化する"
"set visualbell t_vb=
" 行番号を表示
set number
" カーソルの位置を表示
set ruler
" 現在の行を強調表示
set cursorline
" 括弧入力時の対応する括弧を表示
set showmatch
" 構文ハイライトを有効にする
syntax enable
colorscheme default
" 不可視文字を可視化
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" 行末のスペースを削除
auto BufWritePre * :%s/\s\+$//ge
" 改行コード表示
se list
