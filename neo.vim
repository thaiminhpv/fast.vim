" =========== custom keymap in neovim only ==============
nnoremap cb /(\\|)<CR>"_dib:noh<CR>i
nnoremap ch /(\\|)<CR>"_dib:noh<CR>i
nnoremap cv /{\\|}<CR>"_diB:noh<CR>i
nnoremap cq /{\\|}<CR>"_diB:noh<CR>i
nnoremap cB /{\\|}<CR>"_diB:noh<CR>i
nnoremap cd /\[\\|\]<CR>"_di[:noh<CR>i
nnoremap c" /"<CR>:noh<CR>"_ci"
nnoremap cl /"<CR>:noh<CR>"_ci"
nnoremap c' /'<CR>:noh<CR>"_ci'
nnoremap c` /`<CR>:noh<CR>"_ci`

vnoremap ub <C-C>/(\\|)<backspace>)<CR>:noh<CR>vib
vnoremap uh <C-C>/(\\|)<backspace>)<CR>:noh<CR>vib
vnoremap uv <C-C>/{\\|}<backspace>}<CR>:noh<CR>viB
vnoremap uB <C-C>/{\\|}<backspace>}<CR>:noh<CR>viB
vnoremap uq <C-C>/{\\|}<backspace>}<CR>:noh<CR>viB
vnoremap ud <C-C>/\[\\|\]<backspace>]<CR>:noh<CR>vi[
vnoremap u" <C-C>/"<CR>:noh<CR>vi"
vnoremap ul <C-C>/"<CR>:noh<CR>vi"
vnoremap u' <C-C>/'<CR>:noh<CR>vi'

source $HOME/keymap.vim
