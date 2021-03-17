" vim-go stuff
set autowrite
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_metalinter_autosave = 0
autocmd BufWritePre *.go :GoImports
autocmd BufWritePre *.go :GoMetaLinter

" autocmd FileType go nmap <leader>r <Plug>(go-run)
" autocmd FileType go nmap <leader>t <Plug>(go-test)
let g:go_fmt_command = "goimports"

run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

