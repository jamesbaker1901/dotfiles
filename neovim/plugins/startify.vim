let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/git',
            \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
" automatically save sessions
let g:startify_session_persistence

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_custom_header = [
	\'     __   _ _______  _____  _    _ _____ _______',
	\'     | \  | |______ |     |  \  /    |   |  |  |',
	\'     |  \_| |______ |_____|   \/   __|__ |  |  |',
	\]

