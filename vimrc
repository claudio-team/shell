" ~/.vimrc (configuration file for vim only)

" set file name as title of tab
let &titlestring = hostname() . "[vim(" . expand("%:t") . ")]"
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
   set title
endif


" skeletons
function! SKEL_spec()
	0r /usr/share/vim/current/skeletons/skeleton.spec
	language time en_US
	if $USER != ''
	    let login = $USER
	elseif $LOGNAME != ''
	    let login = $LOGNAME
	else
	    let login = 'unknown'
	endif
	let newline = stridx(login, "\n")
	if newline != -1
	    let login = strpart(login, 0, newline)
	endif
	if $HOSTNAME != ''
	    let hostname = $HOSTNAME
	else
	    let hostname = system('hostname -f')
	    if v:shell_error
		let hostname = 'localhost'
	    endif
	endif
	let newline = stridx(hostname, "\n")
	if newline != -1
	    let hostname = strpart(hostname, 0, newline)
	endif
	exe "%s/specRPM_CREATION_DATE/" . strftime("%a\ %b\ %d\ %Y") . "/ge"
	exe "%s/specRPM_CREATION_AUTHOR_MAIL/" . login . "@" . hostname . "/ge"
	exe "%s/specRPM_CREATION_NAME/" . expand("%:t:r") . "/ge"
	setf spec
endfunction
autocmd BufNewFile	*.spec	call SKEL_spec()
" filetypes
filetype plugin on
filetype indent on
colorscheme slate
" colorscheme jellybeans
" au VimEnter *  NERDTree
let NERDTreeShowBookmarks=1
" autocmd VimEnter * NERDTree
" autocmd BufRead * let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |exec "set path+=".s:tempPath
" autocmd VimEnter * nmap <F3> :NERDTreeToggle<CR>
" Add the current file's directory to the path if not already present.
" autocmd VimEnter * imap <F3> <Esc>:NERDTreeToggle<CR>
" autocmd VimEnter * wincmd w
" autocmd BufEnter * lcd %:p:h
" autocmd BufEnter * silent! lcd %:p:h
" let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=35 
let NERDChristmasTree=1
let NERDTreeCaseSensitiveSort=1
let NERDTreeChDirMode=2
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_focus_on_files=1
let g:SuperTabDefaultCompletionType = "<c-n>"
" map <leader>n<plug>NERDTreeTabsToggle<CR>
autocmd VimEnter * nmap <F3> :NERDTreeTabsToggle<CR>
let mapleader=","

"vim-powerline setting
 set t_Co=256
 set laststatus=2
 let g:Powerline_colorscheme='solarized256'

"MRU record recent opened files
if has('unix')
   let $VIMFILES = $HOME.'/.vim'
else
   let $VIMFILES = $VIM.'/vimfiles'
endif
let MRU_File = $VIMFILES.'/_vim_mru_files'
let MRU_Max_Entries = 1000
let MRU_Add_Menu = 0
"nmap <leader>f :MRU<CR>
autocmd VimEnter * nmap <F4> :MRU<CR>
autocmd VimEnter * nmap <localleader>4 :MRU<CR>

"Taglist
autocmd VimEnter * nmap <F2> :Tlist<CR>
autocmd VimEnter * nmap <localleader>2 :Tlist<CR>

"Grep
autocmd VimEnter * nmap <F5> :Grep<CR>
autocmd VimEnter * nmap <F6> :Rgrep<CR>

"Line number toggle
autocmd VimEnter * nmap <F7> :set nu!<CR>
autocmd VimEnter * nmap <localleader>n :set nu!<CR>

"quit vim
autocmd VimEnter * nmap <F12> :q<CR>
autocmd VimEnter * nmap <localleader>q :q<CR>

"select word
autocmd VimEnter * nmap <space> viw

"delete line on insert mod
autocmd VimEnter * imap <c-d> <esc>ddi

"split window
autocmd VimEnter * nmap <localleader>s :split<CR>
autocmd VimEnter * nmap <localleader>sv :vsplit<CR>

"find diretory tree of current file
autocmd VimEnter * nmap <F9> :NERDTreeFind<CR>
autocmd VimEnter * nmap <localleader>t :NERDTreeFind<CR>

"highlight search
set hlsearch incsearch

" ~/.vimrc ends here

set runtimepath^=~/.vim/bundle/ctrlp.vim

