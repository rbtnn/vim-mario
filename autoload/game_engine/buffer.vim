
scriptencoding utf-8

function! game_engine#buffer#nrlist()
  return  filter(range(1, bufnr("$")), "bufexists(v:val) && buflisted(v:val)")
endfunction
function! game_engine#buffer#escape(bname)
  return '^' . join(map(split(a:bname, '\zs'), '"[".v:val."]"'), '') . '$'
endfunction
function! game_engine#buffer#nr(bname)
  return bufnr(game_engine#buffer#escape(a:bname))
endfunction
function! game_engine#buffer#winnr(bname)
  return bufwinnr(game_engine#buffer#escape(a:bname))
endfunction
function! game_engine#buffer#uniq_open(bname,lines,mode)
  let curr_bufname = bufname('%')

  if ! bufexists(a:bname)
    execute printf('split %s',a:bname)
    setlocal bufhidden=hide buftype=nofile noswapfile nobuflisted
  elseif game_engine#buffer#winnr(a:bname) != -1
    execute game_engine#buffer#winnr(a:bname) 'wincmd w'
  else
    execute 'split'
    execute 'buffer' game_engine#buffer#nr(a:bname)
  endif

  if a:mode is# 'w'
    " let lnum = 1
    " for line in a:lines
    "   if line isnot getline(lnum)
    "     call setline(lnum, line)
    "   endif
    "   let lnum += 1
    " endfor
    silent % delete _
    silent put=a:lines
    silent 1 delete _
  elseif a:mode is# 'a'
    call append('$',a:lines)
  endif

  execute bufwinnr(curr_bufname) 'wincmd w'
endfunction

