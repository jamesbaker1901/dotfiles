" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeGitStatusUseNerdFonts = 1 "
map <C-n> :NERDTreeToggle<CR>

