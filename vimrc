call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax enable " enable syntax highlight
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

"""""""""""" Files organisation -------------------------

set directory^=$HOME/.vim/tmp//

"""""""""""" :find COMMAND -------------------------

set nocompatible " no backward compatibility with vi
set path+=** " tab completion for all file related tasks
set wildmenu " tab auto-completion
set wildignore+=**/node_modules/**
" :ls let you see the files in the buffer system, hit :b filename to go to.

"""""""""""" TAG JUMPING -------------------------

command! MakeTags !ctags -R . 

"""""""""""" AUTO COMPLETION -------------------------

" Use the command ctrl + n      for auto-completion.
"					        ctrl + x + f  for file search.
"					        ctrl + x + n  for just this file.
"					        ctrl + x + ]  for tag jumping.

"""""""""""" FILE BROWSING -------------------------

let g:netrw_banner=0          " disable banner
let g:netrw_brows_split=4			" open in prior window
let g:netrw_altv=1						" open splits to the right
let g:netrw_liststyle=3				" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" use :edit to edit a file
" <CR>/v/t to open in a h-split/v-split/table
" " see |netrw-browse-map| for more info

"""""""""""" SNIPPETS -------------------------

" Read an empty HTML templates et move cursos to title
nnoremap ,html :-1read $HOME/.vim/templates/skeleton.html<CR>3jwf>a




" vim-latex-live-preview settings
autocmd Filetype tex setl updatetime=1
