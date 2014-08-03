
scriptencoding utf-8

let $LANG = 'ja_JP.UTF-8'

function! game_engine#string#padding(line, width, float)
  if a:width <= 0
    return ''
  endif
  let n = a:width - strdisplaywidth(a:line)
  if a:float < 0
    return a:line . repeat(' ', n)
  elseif 0 < a:float
    return repeat(' ', n) . a:line
  else
    if n % 2 is 0
      return repeat(' ', n/2) . a:line . repeat(' ', n/2)
    else
      return repeat(' ', (n-1)/2) . a:line . repeat(' ', (n-1)/2) . ' '
    endif
  endif
endfunction
function! game_engine#string#split(line, width, float, is_wrap)
  if a:width is 0
    return ['']
  endif

  let lines = []

  let cs = split(a:line, '\zs')
  let cs_index = 0

  let text = ''
  while cs_index < len(cs)
    if cs[cs_index] is "\n"
      let text = game_engine#string#padding(text, a:width, a:float)
      let lines += [text]
      let text = ''
    else
      let w = strdisplaywidth(text . cs[cs_index])

      if w < a:width
        let text .= cs[cs_index]
      elseif a:width < w
        let text = game_engine#string#padding(text, a:width, a:float)
      else
        let text .= cs[cs_index]
      endif

      if a:width <= w
        let lines += [text]
        let text = ''
        if a:is_wrap
          if a:width < w
            if a:width < strdisplaywidth(cs[cs_index])
              while get(cs, cs_index, "\n") isnot "\n"
                let cs_index += 1
              endwhile
              continue
            else
              let text = cs[cs_index]
            endif
          endif
        else
          while get(cs, cs_index, "\n") isnot "\n"
            let cs_index += 1
          endwhile
          continue
        endif
      endif

    endif
    let cs_index += 1
  endwhile

  if !empty(text)
    let lines += [ game_engine#string#padding(text, a:width, a:float) ]
  endif

  return lines
endfunction

function! game_engine#string#override(line, width, float, col, str)
  let as = split(a:line, '\zs')
  let asci_or_multi = []
  let sum_width = 0
  for n in as
    let sum_width += strdisplaywidth(n)
    if 1 < strdisplaywidth(n)
      let asci_or_multi = repeat([1], strdisplaywidth(n))
    else
      let asci_or_multi += [0]
    endif
  endfor
  echo asci_or_multi

  " let is_wrap = 1
  " let fixed_str = (a:col < 0) ? (a:str[(-1*a:col):]) : a:str
  " let fixed_col = (a:col < 0) ? 0 : a:col
  " let new_line = game_engine#string#split(a:line, fixed_col, a:float, is_wrap)[0]
  " let new_line .= fixed_str
  " let buf = ''
  " let i = 0
  " for x in split(a:line, '\zs')
  "   if strdisplaywidth(x) + i <= strdisplaywidth(new_line)
  "     let i += strdisplaywidth(x)
  "   elseif strdisplaywidth(new_line) + 1 is strdisplaywidth(x) + i
  "     let buf .= ' '
  "   else
  "     let buf .= x
  "   endif
  " endfor
  " let new_line .= buf
  " echo i
  " " echo map(xs, "v:val =~ '[\\x80-\\xff]' ? ' ' : v:val")
  " return game_engine#string#split(new_line, a:width, a:float, is_wrap)[0]
endfunction
" echo game_engine#string#override('あa', 5, 1, 0,'b')

" echo game_engine#string#override('AAあAA', 10, -1, -2, 'BBB')
" echo game_engine#string#override('AAあAA', 10, -1,  0, 'BBB')
" echo game_engine#string#override('AAあAA', 10, -1,  2, 'BBB')
" echo game_engine#string#override('AAあAA', 10, -1,  3, 'BBB')
" echo game_engine#string#override('AAあAA', 10, -1,  4, 'BBB')
" echo game_engine#string#override('AAあAA', 10, -1,  6, 'BBB')
" echo game_engine#string#override('AAあAA', 10, -1,  8, 'BBB')
" echo game_engine#string#override('AAあAA', 10, -1, 10, 'BBB')
" echo game_engine#string#override('AAあAA', 10, -1, 12, 'BBB')
