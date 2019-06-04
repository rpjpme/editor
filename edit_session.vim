let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <S-Tab> <Plug>snipMateBack
inoremap <silent> <SNR>80_yrrecord =YRRecord3()
inoremap <silent> <Plug>snipMateShow =snipMate#ShowAvailableSnips()
inoremap <silent> <Plug>snipMateBack =snipMate#BackwardsSnippet()
inoremap <silent> <Plug>snipMateTrigger =snipMate#TriggerSnippet(1)
inoremap <silent> <Plug>snipMateNextOrTrigger =snipMate#TriggerSnippet()
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
inoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
inoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
imap <M-Down> j
imap <M-Up> k
imap <M-Left> h
imap <M-Right> l
imap <C-S-Left> :tabp
imap <C-S-Right> :tabn
xmap 	 <Plug>snipMateVisual
smap 	 <Plug>snipMateNextOrTrigger
nnoremap <silent>  :YRReplace '1', p
nnoremap <silent>  :YRReplace '-1', P
vmap c <Plug>(emmet-code-pretty)
vmap m <Plug>(emmet-merge-lines)
nmap A <Plug>(emmet-anchorize-summary)
nmap a <Plug>(emmet-anchorize-url)
nmap k <Plug>(emmet-remove-tag)
nmap j <Plug>(emmet-split-join-tag)
nmap / <Plug>(emmet-toggle-comment)
nmap i <Plug>(emmet-image-size)
nmap N <Plug>(emmet-move-prev)
nmap n <Plug>(emmet-move-next)
vmap D <Plug>(emmet-balance-tag-outword)
nmap D <Plug>(emmet-balance-tag-outword)
vmap d <Plug>(emmet-balance-tag-inward)
nmap d <Plug>(emmet-balance-tag-inward)
nmap u <Plug>(emmet-update-tag)
nmap ; <Plug>(emmet-expand-word)
vmap , <Plug>(emmet-expand-abbr)
nmap , <Plug>(emmet-expand-abbr)
map ,e <Plug>(ctrlp)
nmap ,D :tab split:call jedi#goto()
nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')
nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')
nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')
nmap ,c :CtrlPCmdPalette
nmap ,m :CtrlPMRUFiles
nmap ,f :CtrlPLine
nmap ,G :CtrlPBufTagAll
nmap ,g :CtrlPBufTag
nmap ,t :NERDTreeFind
nmap ,wr :Ack <cword>
nmap ,r :Ack 
nmap - <Plug>(choosewin)
nmap @ :YRMapsMacro
vmap <expr> D DVB_Duplicate()
xnoremap <silent> P :YRPaste 'P', 'v'
nnoremap <silent> P :YRPaste 'P'
xmap S <Plug>VSurround
vmap [% [%m'gv``
nmap [_ <Plug>(IndentWisePreviousAbsoluteIndent)
xmap [_ <Plug>(IndentWisePreviousAbsoluteIndent)
omap [_ <Plug>(IndentWisePreviousAbsoluteIndent)
nmap [+ <Plug>(IndentWisePreviousGreaterIndent)
xmap [+ <Plug>(IndentWisePreviousGreaterIndent)
omap [+ <Plug>(IndentWisePreviousGreaterIndent)
nmap [= <Plug>(IndentWisePreviousEqualIndent)
xmap [= <Plug>(IndentWisePreviousEqualIndent)
omap [= <Plug>(IndentWisePreviousEqualIndent)
nmap [- <Plug>(IndentWisePreviousLesserIndent)
xmap [- <Plug>(IndentWisePreviousLesserIndent)
omap [- <Plug>(IndentWisePreviousLesserIndent)
map \t <Plug>TaskList
nnoremap \gb :GitBlame
nnoremap \gp :GitPullRebase
nnoremap \gc :GitCommit
nnoremap \gA :GitAdd <cfile>
nnoremap \ga :GitAdd
nnoremap \gl :GitLog
nnoremap \gs :GitStatus
nnoremap \gD :GitDiff --cached
nnoremap \gd :GitDiff
nmap \ca <Plug>NERDCommenterAltDelims
xmap \cu <Plug>NERDCommenterUncomment
nmap \cu <Plug>NERDCommenterUncomment
xmap \cb <Plug>NERDCommenterAlignBoth
nmap \cb <Plug>NERDCommenterAlignBoth
xmap \cl <Plug>NERDCommenterAlignLeft
nmap \cl <Plug>NERDCommenterAlignLeft
nmap \cA <Plug>NERDCommenterAppend
xmap \cy <Plug>NERDCommenterYank
nmap \cy <Plug>NERDCommenterYank
xmap \cs <Plug>NERDCommenterSexy
nmap \cs <Plug>NERDCommenterSexy
xmap \ci <Plug>NERDCommenterInvert
nmap \ci <Plug>NERDCommenterInvert
nmap \c$ <Plug>NERDCommenterToEOL
xmap \cn <Plug>NERDCommenterNested
nmap \cn <Plug>NERDCommenterNested
xmap \cm <Plug>NERDCommenterMinimal
nmap \cm <Plug>NERDCommenterMinimal
xmap \c  <Plug>NERDCommenterToggle
nmap \c  <Plug>NERDCommenterToggle
xmap \cc <Plug>NERDCommenterComment
nmap \cc <Plug>NERDCommenterComment
nmap \sp <Plug>(signify-prev-hunk)
nmap \sn <Plug>(signify-next-hunk)
nmap \e :Errors
map \3 :NERDTreeToggle
map \5 :TagbarToggle
noremap \f :Autoformat
map \<Up> k
map \<Left> h
map \<Right> l
vmap ]% ]%m'gv``
nmap ]_ <Plug>(IndentWiseNextAbsoluteIndent)
xmap ]_ <Plug>(IndentWiseNextAbsoluteIndent)
omap ]_ <Plug>(IndentWiseNextAbsoluteIndent)
nmap ]+ <Plug>(IndentWiseNextGreaterIndent)
xmap ]+ <Plug>(IndentWiseNextGreaterIndent)
omap ]+ <Plug>(IndentWiseNextGreaterIndent)
nmap ]= <Plug>(IndentWiseNextEqualIndent)
xmap ]= <Plug>(IndentWiseNextEqualIndent)
omap ]= <Plug>(IndentWiseNextEqualIndent)
nmap ]- <Plug>(IndentWiseNextLesserIndent)
xmap ]- <Plug>(IndentWiseNextLesserIndent)
omap ]- <Plug>(IndentWiseNextLesserIndent)
vmap a% [%v]%
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
xnoremap <silent> d :YRDeleteRange 'v'
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> gp :YRPaste 'gp'
nnoremap <silent> gP :YRPaste 'gP'
xmap gS <Plug>VgSurround
xnoremap <silent> p :YRPaste 'p', 'v'
nnoremap <silent> p :YRPaste 'p'
nnoremap <silent> tl :TMToggle
nnoremap <silent> tf :TMFocus
map ts :tab split
map tt :tabnew 
map tm :tabm 
map tp :tabp
map tn :tabn
xnoremap <silent> x :YRDeleteRange 'v'
xnoremap <silent> y :YRYankRange 'v'
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
smap <S-Tab> <Plug>snipMateBack
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <SNR>80_yrrecord :call YRRecord3()
nnoremap <silent> <Plug>(choosewin) :call choosewin#start(range(1, winnr('$')))
xnoremap <silent> <Plug>(signify-motion-outer-visual) :call sy#util#hunk_text_object(1)
onoremap <silent> <Plug>(signify-motion-outer-pending) :call sy#util#hunk_text_object(1)
xnoremap <silent> <Plug>(signify-motion-inner-visual) :call sy#util#hunk_text_object(0)
onoremap <silent> <Plug>(signify-motion-inner-pending) :call sy#util#hunk_text_object(0)
nnoremap <silent> <expr> <Plug>(signify-prev-hunk) &diff ? '[c' : ":\call sy#jump#prev_hunk(v:count1)\"
nnoremap <silent> <expr> <Plug>(signify-next-hunk) &diff ? ']c' : ":\call sy#jump#next_hunk(v:count1)\"
snoremap <silent> <Plug>snipMateBack a=snipMate#BackwardsSnippet()
snoremap <silent> <Plug>snipMateNextOrTrigger a=snipMate#TriggerSnippet()
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <F11> :call conque_term#exec_file()
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
vnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
nnoremap <silent> <Plug>(ctrlp) :CtrlP
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
vmap <expr> <M-S-Up> DVB_Drag('up')
vmap <expr> <M-S-Down> DVB_Drag('down')
vmap <expr> <M-S-Right> DVB_Drag('right')
vmap <expr> <M-S-Left> DVB_Drag('left')
map <F2> :TaskList
map <Down> j
map <M-Down> j
map <M-Up> k
map <M-Left> h
map <M-Right> l
map <C-S-Left> :tabp
map <C-S-Right> :tabn
inoremap  
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 <Plug>snipMateNextOrTrigger
imap <NL> 
imap 	 <Plug>snipMateShow
imap  <Plug>Isurround
imap A <Plug>(emmet-anchorize-summary)
imap a <Plug>(emmet-anchorize-url)
imap k <Plug>(emmet-remove-tag)
imap j <Plug>(emmet-split-join-tag)
imap / <Plug>(emmet-toggle-comment)
imap i <Plug>(emmet-image-size)
imap N <Plug>(emmet-move-prev)
imap n <Plug>(emmet-move-next)
imap D <Plug>(emmet-balance-tag-outword)
imap d <Plug>(emmet-balance-tag-inward)
imap u <Plug>(emmet-update-tag)
imap ; <Plug>(emmet-expand-word)
imap , <Plug>(emmet-expand-abbr)
imap <silent> [6~ <PageDown>
imap <silent> [5~ <PageUp>
imap <silent> OF <End>
imap <silent> OH <Home>
imap <silent> OD <Left>
imap <silent> OC <Right>
imap <silent> OB <Down>
imap <silent> OA <Up>
imap ;; 
cabbr w!! w !sudo tee "%"
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/dirs/backups
set completeopt=menu
set directory=~/.vim/dirs/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hlsearch
set incsearch
set laststatus=2
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/plugged/dir-configs-override.vim/,~/.vim/plugged/nerdtree/,~/.vim/plugged/nerdcommenter/,~/.vim/plugged/tagbar/,~/.vim/plugged/ctrlp.vim/,~/.vim/plugged/vim-ctrlp-cmdpalette/,~/.vim/plugged/emmet-vim/,~/.vim/plugged/git-vim/,~/.vim/plugged/tabman.vim/,~/.vim/plugged/vim-airline/,~/.vim/plugged/vim-airline-themes/,~/.vim/plugged/fisa-vim-colorscheme/,~/.vim/plugged/gruvbox/,~/.vim/plugged/Apprentice/,~/.vim/plugged/vim-colors_atelier-schemes/,~/.vim/plugged/conque-term/,~/.vim/plugged/FixedTaskList.vim/,~/.vim/plugged/vim-surround/,~/.vim/plugged/vim-autoclose/,~/.vim/plugged/vim-indent-object/,~/.vim/plugged/vim-indentwise/,~/.vim/plugged/jedi-vim/,~/.vim/plugged/vim-addon-mw-utils/,~/.vim/plugged/tlib_vim/,~/.vim/plugged/vim-snippets/,~/.vim/plugged/vim-snipmate/,~/.vim/plugged/vim-signify/,~/.vim/plugged/vim-isort/,~/.vim/plugged/dragvisuals.vim/,~/.vim/plugged/vim-choosewin/,~/.vim/plugged/syntastic/,~/.vim/plugged/ack.vim/,~/.vim/plugged/vim-autoformat/,~/.vim/plugged/IndexedSearch/,~/.vim/plugged/matchit.zip/,~/.vim/plugged/YankRing.vim/,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/plugged/vim-ctrlp-cmdpalette/after,~/.vim/plugged/jedi-vim/after,~/.vim/plugged/vim-snipmate/after,~/.vim/after
set scrolloff=3
set shiftwidth=4
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set undodir=~/.vim/dirs/undos
set undofile
set viminfo='100,<50,s10,h,n~/.vim/dirs/viminfo
set wildmode=list:longest
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/Cpp/editor
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 include/edit.hpp
badd +0 include/window.hpp
badd +0 src/edit.cpp
badd +0 src/window.cpp
argglobal
silent! argdel *
$argadd include/edit.hpp
$argadd include/window.hpp
$argadd src/edit.cpp
$argadd src/window.cpp
edit include/edit.hpp
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
xnoremap <buffer> <silent> \a} `>a}`<i{
xnoremap <buffer> <silent> \a{ `>a}`<i{
xnoremap <buffer> <silent> \a) `>a)`<i(
xnoremap <buffer> <silent> \a( `>a)`<i(
xnoremap <buffer> <silent> \a' `>a'`<i'
xnoremap <buffer> <silent> \a] `>a]`<i[
xnoremap <buffer> <silent> \a[ `>a]`<i[
xnoremap <buffer> <silent> \a" `>a"`<i"
xnoremap <buffer> <silent> \a` `>a``<i`
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
