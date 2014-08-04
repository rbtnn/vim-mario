
let g:loaded_mario = 1
function! s:start_game()
  try
    call game_engine#version()
    call mario#start_game()
  catch '.*'
    throw 'Please install https://github.com/rbtnn/game_engine.vim'
  endtry
endfunction
command! -nargs=0 Mario :call <sid>start_game()

