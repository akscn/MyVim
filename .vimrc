" Setting number
set number

" Setting background
set background=dark

" Setting the rule
set ruler

" Display the file path in the status line
set laststatus=2

" Map <F2> to toggle line numbers
nnoremap <F2> :set number!<CR>

" Changing and downloading the dracula theme for the vim
if v:version < 802
    packadd! dracula
endif
syntax enable
colorscheme dracula

" Map Ctrl+c to copy in Both mode
vmap <C-c> "+y


call plug#begin('~/.vim/plugged')

" FZF and mapping it to the \f
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
nnoremap <leader>f :FZF<CR>

" NERDTree and mapping it to the \n
Plug 'preservim/nerdtree'
nnoremap <leader>n :NERDTreeToggle<CR>

" Auto-pairs
Plug 'jiangmiao/auto-pairs'
call plug#end()


" Autocommand to load a template for new *.cpp files
autocmd BufNewFile *.cpp 0r ~/.vim/template/cpp_template.cpp

" Compile and run C++ code
nnoremap <F5> :w<CR>:!g++ -g % -o %:r && ./%:r<CR>
" Compile C++ code without running
nnoremap <F9> :w<CR>:!g++ -g % -o %:r<CR>
" Run gdb on the compiled program
nnoremap <F12> :!gdb ./%:r<CR>

" Save the current file
nnoremap <F3> :w<CR>

" Select all text in the file
nnoremap <C-a> ggVG

