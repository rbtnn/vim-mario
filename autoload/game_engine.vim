
scriptencoding utf-8

function! s:get_session(vital_plugin_name, game_title, auto_funcref)
  let session = {}

  let session._ = {}
  let session._.V = vital#of(a:vital_plugin_name)
  let session._.Random = session._.V.import('Random.Xor128')
  let session._.List = session._.V.import('Data.List')

  call session._.Random.srand()

  let session._.unix_p = has('unix') && ! has('mac')
  let session._.windows_p = has('win95') || has('win16') || has('win32') || has('win64')
  let session._.cygwin_p = has('win32unix')
  let session._.mac_p = ! session._.windows_p
        \ && ! session._.cygwin_p
        \ && (
        \       has('mac')
        \    || has('macunix')
        \    || has('gui_macvim')
        \    || (  ! executable('xdg-open')
        \       && system('uname') =~? '^darwin'
        \       )
        \    )
  let session._.backup = {
        \   'guifont' : &guifont,
        \   'spell' : &spell,
        \   'updatetime' : &updatetime,
        \   'maxfuncdepth' : &maxfuncdepth,
        \   'titlestring' : &titlestring,
        \   'columns' : &columns,
        \   'lines' : &lines,
        \   'list' : &list,
        \ }

  let session._.game_title = a:game_title
  let session._.auto_funcref = a:auto_funcref

  function! session.redraw(lines) dict
    call game_engine#buffer#uniq_open(self._.game_title, a:lines, "w")
  endfunction

  return session
endfunction

function! game_engine#start_game(vital_plugin_name, game_title, auto_funcref)
  tabnew
  call game_engine#buffer#uniq_open(a:game_title, [], "w")
  execute printf("%dwincmd w", game_engine#buffer#winnr(a:game_title))
  setlocal filetype=game_engine
  only

  let b:session = s:get_session(a:vital_plugin_name, a:game_title, a:auto_funcref)

  if b:session._.windows_p
    setlocal guifont=Consolas:h2:cSHIFTJIS
  elseif b:session._.mac_p
    setlocal guifont=Menlo\ Regular:h5
  elseif b:session._.unix_p
    setlocal guifont=Monospace\ 2
  else
  endif

  augroup GameEngine
    autocmd!
    autocmd CursorHold,CursorHoldI * call game_engine#auto_funcref()
  augroup END

  if has('gui_running')
    let &columns = 9999
    let &lines = 999
  endif
endfunction
function! game_engine#exit_game()
  if &filetype is# "game_engine"
    augroup GameEngine
      autocmd!
    augroup END

    let &maxfuncdepth = b:session._.backup.maxfuncdepth
    let &guifont = b:session._.backup.guifont
    let &updatetime = b:session._.backup.updatetime
    let &titlestring = b:session._.backup.titlestring
    let &spell = b:session._.backup.spell
    let &list = b:session._.backup.list
    if has('gui_running')
      let &columns = b:session._.backup.columns
      let &lines = b:session._.backup.lines
    endif
    bdelete!
  endif
endfunction

function! game_engine#auto_funcref()
  try
   call b:session._.auto_funcref()
   call feedkeys(mode() is# 'i' ? "\<C-g>\<ESC>" : "g\<ESC>", 'n')
 catch '.*'
 endtry
endfunction

