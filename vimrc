call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

execute pathogen#infect()
syntax on
filetype plugin indent on
" vim-latex-live-preview settings
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'xecute pathogen#infect()

