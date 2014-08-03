
if exists ("b:current_syntax")
  finish
endif

function! s:define_hi(name, gui, cui, c)
  execute printf('highlight! game_engine%sHi guifg=%s guibg=%s ctermfg=%s ctermbg=%s',
        \   a:name, a:gui, a:gui, a:cui, a:cui)
  execute printf('syntax match game_engine%s  "@%s"', a:name, a:c)
  execute printf('highlight! default link game_engine%s game_engine%sHi',
        \ a:name, a:name)
endfunction

call s:define_hi('Red',    '#ff0000', 'red',         'R')
call s:define_hi('Green',  '#00ff00', 'green',       'G')
call s:define_hi('Blue',   '#0000ff', 'blue',        'B')
call s:define_hi('Yellow', '#ffff00', 'yellow',      'Y')
call s:define_hi('Purple', '#8B008B', 'DarkMagenta', 'P')
call s:define_hi('Brown',  '#965042', 'DarkRed',     'b')
call s:define_hi('White',  '#ffffff', 'white',       'w')
call s:define_hi('Black',  '#000000', 'black',       'l')

call s:define_hi('Field',  '#DDDDDD', 'gray',        'F')
call s:define_hi('Wall',   '#333333', 'black',       'W')
call s:define_hi('Eye',    '#000000', 'black',       'e')

let b:current_syntax = "game_engine"

