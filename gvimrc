" BlackEagles gvimrc for Linux && Windows
"
" (c) 2010 - 2017

set guioptions=aiA "dont show toolbar

" vim size stuff
set lines=55 columns=200

if has("gui_gtk2") || has("gui_gtk3") || has("gui_qt")
	set guifont=Hack\ 10,DejaVu\ Sans\ Mono\ 10
elseif has("gui_win32")
	set guifont=Lucida_Console:h10:cANSI
endif

vnoremap <C-Insert> "+y
map <S-Insert> "+gP
imap <S-Insert> <MiddleMouse>
cmap <S-Insert> <C-R>+

if has("gui_gtk2") || has("gui_gtk3")
	map <silent> <F12> :silent exec '!gvim'<CR>
elseif has("gui_qt")
	map <silent> <F12> :silent exec '!qvim'<CR>
endif

if version >= 702
	autocmd BufWinLeave * call clearmatches()
endif
