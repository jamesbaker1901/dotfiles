" vim-go stuff
set autowrite
let g:go_def_mapping_enabled = 0
let g:go_metalinter_autosave = 0
autocmd BufWritePre *.go :GoImports
autocmd BufWritePre *.go :GoMetaLinter
let g:go_fmt_command = "goimports"
