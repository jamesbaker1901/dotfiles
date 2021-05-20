" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey ','<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual ','<CR>

let g:which_key_map =  {}
let g:which_key_sep = ': '
" Set a shorter timeout, default is 1000
set timeoutlen=200
set ttimeoutlen=10

let g:which_key_use_floating_win = 1

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'        	, 'comment' ]
let g:which_key_map['f'] = [ ':Telescope find_files'             	, 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                           	, 'split below']
let g:which_key_map['v'] = [ '<C-W>v'                           	, 'split right']
let g:which_key_map['S'] = [ ':Startify'                        	, 'start screen' ]
let g:which_key_map['t'] = [ ':Rg'                              	, 'search text' ]
let g:which_key_map['B'] = [ ':Telescope buffers'                	, 'search Buffers' ]
let g:which_key_map['E'] = [ ':SSave'                           	, 'save session']
let g:which_key_map['L'] = [ ':SLoad'                           	, 'load session']
let g:which_key_map['z'] = [ ':Goyo'                            	, 'zen mode']
let g:which_key_map['r'] = [ ':FloatermNew --opener=edit ranger' 	, 'ranger' ]

" go stuff
autocmd FileType go let g:which_key_map['b'] = [ ':FloatermNew --autoclose=1 --position=auto --height=10 --width=80 --title=gobuild go build', 'go build']

let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'q' : [':Telescope quickfix',                 'quickfix list'],
      \ 'r' : [':Telescope lsp_references',           'references'],
      \ 'a' : [':Telescope lsp_code_actions',         'code actions'],
      \ 'd' : [':Telescope lsp_document_diagnostics', 'diagnostics'],
      \ 't' : [':Telescope treesitter',               'treesitter']
      \}

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'                 , 'history'],
      \ ';' : [':Telescope commands'       , 'commands'],
      \ 'a' : [':Ag'                       , 'text Ag'],
      \ 'b' : [':Telescope current_buffer_fuzzy_find'                   , 'current buffer'],
      \ 'B' : [':Telescope buffers'                  , 'open buffers'],
      \ 'c' : [':Telescope git_commits'                  , 'commits'],
      \ 'C' : [':Telescope git_bcommits'                 , 'buffer commits'],
      \ 'f' : [':Telescope find_files'                    , 'files'],
      \ 'g' : [':GFiles'                   , 'git files'],
      \ 'G' : [':GFiles?'                  , 'modified git files'],
      \ 'h' : [':History'                  , 'file history'],
      \ 'H' : [':History:'                 , 'command history'],
      \ 'l' : [':Lines'                    , 'lines'] ,
      \ 'm' : [':Marks'                    , 'marks'] ,
      \ 'M' : [':Maps'                     , 'normal maps'] ,
      \ 'p' : [':Telescope helptags'                 , 'help tags'] ,
      \ 'P' : [':Telescope tags'                     , 'project tags'],
      \ 's' : [':VsnipOpen'                , 'snippets'],
      \ 'S' : [':Telescope colorscheme'         , 'color schemes'],
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

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                , 'add .'],
      \ 'c' : [':Git commit'               , 'commit'],
      \ 'p' : [':Git push'                 , 'push'],
      \ }

" Register which key map
call which_key#register(',', "g:which_key_map")
