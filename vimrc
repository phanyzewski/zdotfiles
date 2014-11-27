" Stolen wholesale from christoomey, whose dotfiles you really should check out:
" https://github.com/christoomey/dotfiles
function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*.vim'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
        execute 'source' config_file
    endif
  endfor
endfunction

set nocompatible

filetype off " required for Vundle

" Leader is <Space>
let mapleader=" "

" Source the rest of the configuration
" ------------------------------------
call s:SourceConfigFilesIn('')
call s:SourceConfigFilesIn('rcplugins') " after Vundle loads

" Turn on syntax highlighting and filetype detection (after Vundle)
filetype plugin indent on
syntax on
colorscheme jellybeans
