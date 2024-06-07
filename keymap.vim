map <C-S> :w<CR>
nnoremap Q :q<CR>

nnoremap <C-T> <C-Q>

map <C-A> GVgg
map <C-Y> "+y
map Y "+y$
noremap X v$<Left>

nnoremap dm :delm A-Z0-9<CR>

nnoremap <C-H> :%s//gc<Left><Left><Left>
vnoremap <C-H> :s//gc<Left><Left><Left>

" 2 paste style Ctrl + V
imap <C-V> <Esc>"+pi
nmap <C-V> "+p
vmap <C-V> "+p

noremap c "_c
noremap cc "_S
nnoremap C "_c$
vnoremap p "_dP

"fix join
nnoremap J mzJ`z

inoremap <C-j> <C-N>
inoremap <C-k> <C-P>
inoremap <C-l> <Right>

noremap <C-M> <C-A>

tnoremap <C-Q> <C-\><C-n>
tnoremap <C-K> <Up>

nnoremap R yyp
nnoremap U <C-R>

nnoremap cw "_ciw
nnoremap cW "_ciW
nnoremap ct "_cit

vnoremap im <C-C>]Mv[m
vnoremap ic <C-C>][v[[

nnoremap cid "_ci[
nnoremap civ "_ciB

vnoremap ih ib
vnoremap iv iB
vnoremap iq iB
vnoremap id i[
vnoremap il i"

vnoremap ah ab
vnoremap av aB
vnoremap aq aB
vnoremap ad a[
vnoremap al a"
