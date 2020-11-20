" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey ','<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual ','<CR>

let g:which_key_map =  {}
let g:which_key_sep = ': '
" Set a shorter timeout, default is 1000
set timeoutlen=100
set ttimeoutlen=10

let g:which_key_use_floating_win = 1

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'        	, 'comment' ]
let g:which_key_map['f'] = [ ':Files'                           	, 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                           	, 'split below']
let g:which_key_map['S'] = [ ':Startify'                        	, 'start screen' ]
let g:which_key_map['T'] = [ ':Rg'                              	, 'search text' ]
let g:which_key_map['B'] = [ ':Buffers'                         	, 'search Buffers' ]
let g:which_key_map['E'] = [ ':SSave'                           	, 'save session']
let g:which_key_map['L'] = [ ':SLoad'                           	, 'load session']
let g:which_key_map['l'] = [ ':Limelight!!'                     	, 'limelight']
let g:which_key_map['z'] = [ ':Goyo'                            	, 'zen mode']
let g:which_key_map['r'] = [ ':FloatermNew ranger'              	, 'ranger' ]
let g:which_key_map['t'] = [ ':FloatermNew'                     	, 'terminal']
let g:which_key_map['v'] = [ '<C-W>v'                           	, 'split right']

" go stuff
let g:which_key_map['b'] = [ ':FloatermNew --autoclose=1 --position=auto --height=10 --width=80 --title=gobuild go build', 'go build']


" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'                 , 'history'],
      \ ';' : [':Commands'                 , 'commands'],
      \ 'a' : [':Ag'                       , 'text Ag'],
      \ 'b' : [':BLines'                   , 'current buffer'],
      \ 'B' : [':Buffers'                  , 'open buffers'],
      \ 'c' : [':Commits'                  , 'commits'],
      \ 'C' : [':BCommits'                 , 'buffer commits'],
      \ 'f' : [':Files'                    , 'files'],
      \ 'g' : [':GFiles'                   , 'git files'],
      \ 'G' : [':GFiles?'                  , 'modified git files'],
      \ 'h' : [':History'                  , 'file history'],
      \ 'H' : [':History:'                 , 'command history'],
      \ 'l' : [':Lines'                    , 'lines'] ,
      \ 'm' : [':Marks'                    , 'marks'] ,
      \ 'M' : [':Maps'                     , 'normal maps'] ,
      \ 'p' : [':Helptags'                 , 'help tags'] ,
      \ 'P' : [':Tags'                     , 'project tags'],
      \ 's' : [':CocList snippets'         , 'snippets'],
      \ 'S' : [':Colors'                   , 'color schemes'],
      \ 't' : [':Rg'                       , 'Rg text'],
      \ 'T' : [':BTags'                    , 'buffer tags'],
      \ 'w' : [':Windows'                  , 'search windows'],
      \ 'y' : [':Filetypes'                , 'file types'],
      \ 'z' : [':FZF'                      , 'FZF'],
      \ }

" P is for vim-plug
let g:which_key_map.p = {
      \ 'name' : '+plug' ,
      \ 'i' : [':PlugInstall'              , 'install'],
      \ 'u' : [':PlugUpdate'               , 'update'],
      \ 'c' : [':PlugClean'                , 'clean'],
      \ 't' : [':Tmuxline airline'       , 'tmux sync'],
      \ 'm' : [':Tmuxline! ~/.tmux.lightline.snapshot', 'tmux snapshot'],
      \ 's' : [':source ~/.config/nvim/init.vim', 'source vimrc'],
      \ }


" Register which key map
call which_key#register(',', "g:which_key_map")
