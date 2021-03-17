" coc.vim settings
"set cmdheight=2 	" Better display for messages
set updatetime=300 	" Smaller updatetime for CursorHold & CursorHoldI
set shortmess+=c 	" don't give |ins-completion-menu| messages.
set signcolumn=yes 	" always show signcolumns

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" 
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>"

" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
 inoremap <silent><expr> <TAB>
       \ pumvisible() ? coc#_select_confirm() :
       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
       \ <SID>check_back_space() ? "\<TAB>" :
       \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

" Remap for rename current word
nmap <silent> rn <Plug>(coc-rename)


let g:go_auto_sameids = 0

" set statusline^=%{coc#status()}%{get(b:,’coc_current_function’,’’)}
set statusline^=%{coc#status()}
