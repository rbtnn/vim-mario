
scriptencoding utf-8

function! s:init()
  let s:mario_r = [
        \ "     @R@R@R@R@R         ",
        \ "    @R@R@R@R@R@R@R@R@R  ",
        \ "    @B@B@B@B@w@B@w      ",
        \ "    @w@w@w@B@w@w@w@w    ",
        \ "    @w@w@w@w@w@B@B      ",
        \ "     @w@w@w@w@w@w       ",
        \ "    @R@R@B@B@R@B@B      ",
        \ "   @R@R@R@B@B@B@B@B     ",
        \ "    @B@w@R@B @B@B@B     ",
        \ "     @B@B@B@B@B@B       ",
        \ "    @R@R@R@R@R@R        ",
        \ ]
  let s:mario_l = [
        \ "        @R@R@R@R@R      ",
        \ " @R@R@R@R@R@R@R@R@R     ",
        \ "     @w@B@w@B@B@B@B     ",
        \ "   @w@w@w@w@B@w@w@w     ",
        \ "     @B@B@w@w@w@w@w     ",
        \ "      @w@w@w@w@w@w      ",
        \ "     @B@B@R@B@B@R@R     ",
        \ "    @B@B@B@B@B@R@R@R    ",
        \ "    @B@B@B @B@R@w@B     ",
        \ "      @B@B@B@B@B@B      ",
        \ "       @R@R@R@R@R@R     ",
        \ ]
  let s:kuribo_l = [
        \ "                        ",
        \ "                        ",
        \ "                        ",
        \ "      @R@R@R@R@R        ",
        \ "    @B@B@R@R@R@B@B      ",
        \ "    @R@w@B@R@B@w@R      ",
        \ "    @R@w@w@R@w@w@R@R    ",
        \ "@R@R@R@R@R@R@R@R@R@R@R@R",
        \ "    @w@w@w@w@w@w@w      ",
        \ "  @B@B @w@w@w @B@B@B    ",
        \ "   @B@B@B   @B@B@B      ",
        \ ]
  let s:kuribo_r = [
        \ "                        ",
        \ "                        ",
        \ "                        ",
        \ "        @R@R@R@R@R      ",
        \ "      @B@B@R@R@R@B@B    ",
        \ "      @R@w@B@R@B@w@R    ",
        \ "    @R@R@w@w@R@w@w@R    ",
        \ "@R@R@R@R@R@R@R@R@R@R@R@R",
        \ "      @w@w@w@w@w@w@w    ",
        \ "    @B@B@B @w@w@w @B@B  ",
        \ "     @B@B@B   @B@B@B    ",
        \ ]
  let s:empty = [
        \ "                        ",
        \ "                        ",
        \ "                        ",
        \ "                        ",
        \ "                        ",
        \ "                        ",
        \ "                        ",
        \ "                        ",
        \ "                        ",
        \ "                        ",
        \ "                        ",
        \ ]
  let s:field = [
        \ "@F@F@F@F@F@F@F@F@F@F@F@F",
        \ "@F@F@F@F@F@F@F@F@F@F@F@F",
        \ "@F@F@F@F@F@F@F@F@F@F@F@F",
        \ "@F@F@F@F@F@F@F@F@F@F@F@F",
        \ "@F@F@F@F@F@F@F@F@F@F@F@F",
        \ "@F@F@F@F@F@F@F@F@F@F@F@F",
        \ "@F@F@F@F@F@F@F@F@F@F@F@F",
        \ "@F@F@F@F@F@F@F@F@F@F@F@F",
        \ "@F@F@F@F@F@F@F@F@F@F@F@F",
        \ "@F@F@F@F@F@F@F@F@F@F@F@F",
        \ "@F@F@F@F@F@F@F@F@F@F@F@F",
        \ ]
  let s:pipe_top = [
        \ "@G@G@G@G@G@G@G@G@G@G@G@G",
        \ "@G@G@G@G@G@G@G@G@G@G@G@G",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ ]
  let s:pipe_sub = [
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ "  @G@G@G@G@G@G@G@G@w@G  ",
        \ ]
  let s:block = [
        \ "@b@b@b@b@b@b@b@b@b@b@b@b",
        \ "@b@b@b@b@b@b@b@b@b@b@b@b",
        \ "@b@b@b@b@b@b@b@b@b@b@b@b",
        \ "@b@b@b@b@b@b@b@b@b@b@b@b",
        \ "@b@b@b@b@b@b@b@b@b@b@b@b",
        \ "@b@b@b@b@b@b@b@b@b@b@b@b",
        \ "@b@b@b@b@b@b@b@b@b@b@b@b",
        \ "@b@b@b@b@b@b@b@b@b@b@b@b",
        \ "@b@b@b@b@b@b@b@b@b@b@b@b",
        \ "@b@b@b@b@b@b@b@b@b@b@b@b",
        \ "@b@b@b@b@b@b@b@b@b@b@b@b",
        \ ]
  let s:char_G = [
        \ "      @w@w@w@w@w@w      ",
        \ "    @w@w@w@w@w@w@w@w    ",
        \ "  @w@w@w        @w@w@w  ",
        \ "  @w@w            @w@w  ",
        \ "  @w@w                  ",
        \ "  @w@w                  ",
        \ "  @w@w          @w@w@w@w",
        \ "  @w@w@w        @w@w@w@w",
        \ "  @w@w@w          @w@w  ",
        \ "    @w@w@w@w@w@w@w@w@w  ",
        \ "    @w@w@w@w@w@w@w@w    ",
        \ ]
  let s:char_A = [
        \ "        @w@w@w@w        ",
        \ "      @w@w@w@w@w@w      ",
        \ "    @w@w@w@w@w@w@w@w    ",
        \ "    @w@w@w    @w@w@w    ",
        \ "    @w@w        @w@w    ",
        \ "  @w@w@w        @w@w@w  ",
        \ "  @w@w@w@w@w@w@w@w@w@w  ",
        \ "  @w@w@w@w@w@w@w@w@w@w  ",
        \ "  @w@w@w        @w@w@w  ",
        \ "@w@w@w@w        @w@w@w@w",
        \ "@w@w@w            @w@w@w",
        \ ]
  let s:char_M = [
        \ "@w@w@w            @w@w@w",
        \ "@w@w@w@w        @w@w@w@w",
        \ "@w@w@w@w        @w@w@w@w",
        \ "@w@w@w@w@w@w@w@w@w@w@w@w",
        \ "@w@w@w@w@w@w@w@w@w@w@w@w",
        \ "@w@w  @w@w@w@w@w@w  @w@w",
        \ "@w@w    @w@w@w@w    @w@w",
        \ "@w@w    @w@w@w@w    @w@w",
        \ "@w@w    @w@w@w@w    @w@w",
        \ "@w@w                @w@w",
        \ "@w@w                @w@w",
        \ ]
  let s:char_E = [
        \ "    @w@w@w@w@w@w@w@w@w  ",
        \ "    @w@w@w@w@w@w@w@w@w  ",
        \ "    @w@w                ",
        \ "    @w@w                ",
        \ "    @w@w@w@w@w@w@w@w@w  ",
        \ "    @w@w@w@w@w@w@w@w@w  ",
        \ "    @w@w@w@w@w@w@w@w@w  ",
        \ "    @w@w                ",
        \ "    @w@w                ",
        \ "    @w@w@w@w@w@w@w@w@w  ",
        \ "    @w@w@w@w@w@w@w@w@w  ",
        \ ]
  let s:char_O = [
        \ "    @w@w@w@w@w@w@w@w    ",
        \ "  @w@w@w@w@w@w@w@w@w@w  ",
        \ "  @w@w@w@w    @w@w@w@w  ",
        \ "@w@w@w@w@w    @w@w@w@w@w",
        \ "@w@w@w@w        @w@w@w@w",
        \ "@w@w@w@w        @w@w@w@w",
        \ "@w@w@w@w        @w@w@w@w",
        \ "@w@w@w@w@w    @w@w@w@w@w",
        \ "  @w@w@w@w    @w@w@w@w  ",
        \ "  @w@w@w@w@w@w@w@w@w@w  ",
        \ "    @w@w@w@w@w@w@w@w    ",
        \ ]
  let s:char_V = [
        \ "@w@w@w@w        @w@w@w@w",
        \ "@w@w@w@w        @w@w@w@w",
        \ "@w@w@w@w@w    @w@w@w@w@w",
        \ "@w@w@w@w@w    @w@w@w@w@w",
        \ "@w@w@w@w@w    @w@w@w@w@w",
        \ "  @w@w@w@w    @w@w@w@w  ",
        \ "  @w@w@w@w@w@w@w@w@w@w  ",
        \ "    @w@w@w@w@w@w@w@w    ",
        \ "    @w@w@w@w@w@w@w@w    ",
        \ "    @w@w@w@w@w@w@w@w    ",
        \ "        @w@w@w@w        ",
        \ ]
  let s:char_R = [
        \ "    @w@w@w@w@w@w@w      ",
        \ "    @w@w@w@w@w@w@w@w@w  ",
        \ "    @w@w        @w@w@w  ",
        \ "    @w@w        @w@w@w  ",
        \ "    @w@w    @w@w@w@w@w  ",
        \ "    @w@w@w@w@w@w@w@w    ",
        \ "    @w@w@w@w@w@w        ",
        \ "    @w@w@w@w@w@w@w      ",
        \ "    @w@w  @w@w@w@w@w    ",
        \ "    @w@w      @w@w@w@w  ",
        \ "    @w@w        @w@w@w  ",
        \ ]
  let s:char_N = [
        \ "  @w@w@w@w        @w@w  ",
        \ "  @w@w@w@w        @w@w  ",
        \ "  @w@w@w@w@w      @w@w  ",
        \ "  @w@w@w@w@w      @w@w  ",
        \ "  @w@w@w@w@w@w@w  @w@w  ",
        \ "  @w@w@w@w@w@w@w@w@w@w  ",
        \ "  @w@w  @w@w@w@w@w@w@w  ",
        \ "  @w@w      @w@w@w@w@w  ",
        \ "  @w@w      @w@w@w@w@w  ",
        \ "  @w@w        @w@w@w@w  ",
        \ "  @w@w        @w@w@w@w  ",
        \ ]
  let s:char_D = [
        \ "  @w@w@w@w@w@w@w@w      ",
        \ "  @w@w@w@w@w@w@w@w@w    ",
        \ "  @w@w      @w@w@w@w@w  ",
        \ "  @w@w        @w@w@w@w  ",
        \ "  @w@w          @w@w@w  ",
        \ "  @w@w          @w@w@w  ",
        \ "  @w@w          @w@w@w  ",
        \ "  @w@w        @w@w@w@w  ",
        \ "  @w@w      @w@w@w@w@w  ",
        \ "  @w@w@w@w@w@w@w@w@w    ",
        \ "  @w@w@w@w@w@w@w@w      ",
        \ ]

  let s:MR = 0
  let s:ML = 1
  let s:KL = 2
  let s:KR = 3
  let s:E_ = 4
  let s:F_ = 5
  let s:PT = 6
  let s:PS = 7
  let s:B_ = 8
  let s:CG = 9
  let s:CA = 10
  let s:CM = 11
  let s:CE = 12
  let s:CO = 13
  let s:CV = 14
  let s:CR = 15
  let s:CN = 16
  let s:CD = 17

  let xs = [
        \    [
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:B_, s:B_, s:B_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:KR, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:F_, s:F_, s:F_, s:F_, s:F_ ],
        \    ],
        \    [
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_  ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_  ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_  ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_  ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_  ],
        \       [ s:E_, s:E_, s:PT, s:E_, s:E_  ],
        \       [ s:E_, s:E_, s:PS, s:E_, s:E_  ],
        \       [ s:E_, s:E_, s:PS, s:E_, s:E_  ],
        \       [ s:F_, s:F_, s:F_, s:F_, s:F_  ],
        \    ],
        \    [
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:KL ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:F_ ],
        \       [ s:E_, s:E_, s:E_, s:F_, s:F_ ],
        \       [ s:E_, s:E_, s:F_, s:F_, s:F_ ],
        \       [ s:E_, s:F_, s:F_, s:F_, s:F_ ],
        \       [ s:F_, s:F_, s:F_, s:F_, s:F_ ],
        \       [ s:F_, s:F_, s:F_, s:F_, s:F_ ],
        \    ],
        \    [
        \       [ s:E_, s:E_, s:F_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:F_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:F_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:F_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:F_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:F_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:KL, s:E_, s:E_ ],
        \       [ s:F_, s:F_, s:F_, s:F_, s:F_ ],
        \    ],
        \    [
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:KL, s:E_, s:E_ ],
        \       [ s:F_, s:F_, s:F_, s:F_, s:F_ ],
        \    ],
        \    [
        \       [ s:E_, s:E_, s:E_, s:E_, s:B_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:B_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:B_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:B_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:F_, s:KL, s:E_, s:E_, s:F_ ],
        \       [ s:F_, s:F_, s:F_, s:F_, s:F_ ],
        \    ],
        \    [
        \       [ s:E_, s:B_, s:KL, s:B_, s:E_ ],
        \       [ s:E_, s:B_, s:E_, s:B_, s:E_ ],
        \       [ s:E_, s:B_, s:E_, s:B_, s:E_ ],
        \       [ s:E_, s:B_, s:E_, s:B_, s:E_ ],
        \       [ s:E_, s:B_, s:E_, s:B_, s:E_ ],
        \       [ s:E_, s:B_, s:E_, s:B_, s:E_ ],
        \       [ s:E_, s:B_, s:E_, s:B_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:F_, s:F_, s:F_, s:F_, s:F_ ],
        \    ],
        \    [
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:E_, s:E_, s:E_, s:E_, s:E_ ],
        \       [ s:F_, s:F_, s:F_, s:F_, s:F_ ],
        \    ],
        \ ]

  let s:map = [
        \   [ s:MR ],
        \   [ s:E_ ],
        \   [ s:E_ ],
        \   [ s:E_ ],
        \   [ s:E_ ],
        \   [ s:E_ ],
        \   [ s:E_ ],
        \   [ s:E_ ],
        \   [ s:F_ ],
        \ ]

  let prev_r = -1
  let n = 0
  while n < 10
    let r = abs(b:session._.Random.rand()) % len(xs)
    if prev_r is r
      continue
    else
      let n += 1
    endif
    let prev_r = r
    let x = xs[r]
    for lnum in range(0, len(s:map) - 1)
      let s:map[lnum] += x[lnum]
    endfor
  endwhile
endfunction

function! s:map2data(id)
  if a:id is s:E_
    return s:empty
  elseif a:id is s:KL
    return s:kuribo_l
  elseif a:id is s:KR
    return s:kuribo_r
  elseif a:id is s:MR
    return s:mario_r
  elseif a:id is s:ML
    return s:mario_l
  elseif a:id is s:F_
    return s:field
  elseif a:id is s:PT
    return s:pipe_top
  elseif a:id is s:PS
    return s:pipe_sub
  elseif a:id is s:B_
    return s:block
  elseif a:id is s:CG
    return s:char_G
  elseif a:id is s:CA
    return s:char_A
  elseif a:id is s:CM
    return s:char_M
  elseif a:id is s:CE
    return s:char_E
  elseif a:id is s:CO
    return s:char_O
  elseif a:id is s:CV
    return s:char_V
  elseif a:id is s:CR
    return s:char_R
  elseif a:id is s:CN
    return s:char_N
  elseif a:id is s:CD
    return s:char_D
  endif
endfunction
function! s:map2lines()
  let b:session.offset = get(b:session, 'offset', 0)
  let lines = []
  for xs in map(deepcopy(s:map), 'v:val[(b:session.offset):(b:session.offset+10)]')
    let aa = map(deepcopy(xs), 'b:session._.List.zip(s:map2data(v:val))')
    for lnum in range(0, len(aa[0]) - 1)
      let line = []
      for e_idx in range(0, len(aa) - 1)
        let line += aa[e_idx][lnum]
      endfor
      let lines += [join(line, '')]
    endfor
  endfor
  return lines
endfunction
function! s:move_kuribo()
  let moved_kuribo_positions = {}

  for lnum in range(0, len(s:map) - 1)
    for c in range(1, len(s:map[0]) - 1)
      let key = printf('%d-%d', lnum, c)
      if s:map[lnum][c] is s:KL && !has_key(moved_kuribo_positions, key)
        if s:map[lnum][c - 1] is s:E_
          let temp = s:map[lnum][c - 1]
          let s:map[lnum][c - 1] = s:map[lnum][c]
          let s:map[lnum][c] = temp
          let moved_kuribo_positions[key] = 1
        elseif s:map[lnum][c - 1] is s:ML || s:map[lnum][c - 1] is s:MR
          call s:gameover()
          return 0
        else
          let s:map[lnum][c] = s:KR
        endif
      endif
    endfor
  endfor

  for lnum in range(0, len(s:map) - 1)
    for c in range(len(s:map[0]) - 1 - 1, 0, -1)
      let key = printf('%d-%d', lnum, c)
      if s:map[lnum][c] is s:KR && !has_key(moved_kuribo_positions, key)
        if s:map[lnum][c + 1] is s:E_
          let temp = s:map[lnum][c + 1]
          let s:map[lnum][c + 1] = s:map[lnum][c]
          let s:map[lnum][c] = temp
          let moved_kuribo_positions[key] = 1
        elseif s:map[lnum][c + 1] is s:ML || s:map[lnum][c + 1] is s:MR
          call s:gameover()
          return 0
        else
          let s:map[lnum][c] = s:KL
        endif
      endif
    endfor
  endfor

endfunction
function! s:is_jumping()
  for c in range(0, len(s:map[0]) - 1)
    for lnum in range(1, len(s:map) - 1)
      if (s:map[lnum - 1][c] is s:MR || s:map[lnum - 1][c] is s:ML) && s:map[lnum][c] is s:E_
        return 1
      endif
    endfor
  endfor
  return 0
endfunction
function! s:scroll()
  for c in range(get(b:session, 'offset', 0) + 5, len(s:map[0]) - 1)
    for lnum in range(0, len(s:map) - 1)
      if (s:map[lnum][c] is s:MR || s:map[lnum][c] is s:ML)
        let b:session.offset = get(b:session, 'offset', 0) + 1
        return 1
      endif
    endfor
  endfor
  return 0
endfunction

function! s:down()
  for lnum in range(len(s:map) - 1, 1, -1)
    for c in range(0, len(s:map[0]) - 1)
      if (s:map[lnum - 1][c] is s:MR || s:map[lnum - 1][c] is s:ML)
        if s:map[lnum][c] is s:E_
          let temp = s:map[lnum - 1][c]
          let s:map[lnum - 1][c] = s:map[lnum][c]
          let s:map[lnum][c] = temp
          break
        elseif (s:map[lnum][c] is s:KR || s:map[lnum][c] is s:KL)
          let s:map[lnum][c] = s:E_
          break
        endif
      elseif (s:map[lnum - 1][c] is s:KR || s:map[lnum - 1][c] is s:KL)
        if s:map[lnum][c] is s:E_
          let temp = s:map[lnum - 1][c]
          let s:map[lnum - 1][c] = s:map[lnum][c]
          let s:map[lnum][c] = temp
          break
        endif
      endif
    endfor
  endfor
endfunction
function! s:jump()
  if ! s:is_jumping()
    for _ in range(0,3)
      for c in range(0, len(s:map[0]) - 1)
        for lnum in range(0, len(s:map) - 1 - 1)
          if (s:map[lnum + 1][c] is s:MR || s:map[lnum + 1][c] is s:ML)
            if s:map[lnum][c] is s:E_
              let temp = s:map[lnum + 1][c]
              let s:map[lnum + 1][c] = s:map[lnum][c]
              let s:map[lnum][c] = temp
              break
            elseif s:map[lnum][c] is s:B_
              let s:map[lnum][c] = s:E_
              call b:session.redraw(s:map2lines())
              return 0
            endif
          endif
        endfor
      endfor
      call b:session.redraw(s:map2lines())
    endfor
  endif
endfunction
function! s:right()
  let moved = 0
  for lnum in range(0, len(s:map) - 1)
    for c in range(get(b:session, 'offset', 0) + 0, len(s:map[0]) - 1 - 1)
      if (s:map[lnum][c] is s:MR || s:map[lnum][c] is s:ML)
        if s:map[lnum][c + 1] is s:E_
          let s:map[lnum][c] = s:MR
          let temp = s:map[lnum][c + 1]
          let s:map[lnum][c + 1] = s:map[lnum][c]
          let s:map[lnum][c] = temp
          let moved = 1
          if c + 1 is len(s:map[0]) - 1
            call s:gameend()
            return 0
          endif
          break
        elseif s:map[lnum][c + 1] is s:KR || s:map[lnum][c + 1] is s:KL
          call s:gameover()
          return 0
        endif
      endif
    endfor
  endfor
  if moved
    call s:scroll()
    call b:session.redraw(s:map2lines())
  else
    " beep
    normal Gj
  endif
endfunction
function! s:left()
  let moved = 0
  for lnum in range(0, len(s:map) - 1)
    for c in range(get(b:session, 'offset', 0) + 1, len(s:map[0]) - 1)
      if (s:map[lnum][c] is s:MR || s:map[lnum][c] is s:ML)
        if s:map[lnum][c - 1] is s:E_
          let s:map[lnum][c] = s:ML
          let temp = s:map[lnum][c - 1]
          let s:map[lnum][c - 1] = s:map[lnum][c]
          let s:map[lnum][c] = temp
          let moved = 1
          break
        elseif s:map[lnum][c - 1] is s:KR || s:map[lnum][c - 1] is s:KL
          call s:gameover()
          return 0
        endif
      endif
    endfor
  endfor
  if moved
    call b:session.redraw(s:map2lines())
  else
    " beep
    normal Gj
  endif
endfunction
function! s:gameover()
  let s:map[1][(get(b:session, 'offset', 0) + 0)] = s:CG
  let s:map[1][(get(b:session, 'offset', 0) + 1)] = s:CA
  let s:map[1][(get(b:session, 'offset', 0) + 2)] = s:CM
  let s:map[1][(get(b:session, 'offset', 0) + 3)] = s:CE
  let s:map[2][(get(b:session, 'offset', 0) + 1)] = s:CO
  let s:map[2][(get(b:session, 'offset', 0) + 2)] = s:CV
  let s:map[2][(get(b:session, 'offset', 0) + 3)] = s:CE
  let s:map[2][(get(b:session, 'offset', 0) + 4)] = s:CR
  call b:session.redraw(s:map2lines())
  redraw!
  while getchar() isnot char2nr('q')
  endwhile
  call game_engine#exit_game()
endfunction
function! s:gameend()
  let s:map[1][(get(b:session, 'offset', 0) + 0)] = s:CE
  let s:map[1][(get(b:session, 'offset', 0) + 1)] = s:CN
  let s:map[1][(get(b:session, 'offset', 0) + 2)] = s:CD
  call b:session.redraw(s:map2lines())
  redraw!
  while getchar() isnot char2nr('q')
  endwhile
  call game_engine#exit_game()
endfunction

function! s:auto()
  let b:session.time = (get(b:session, 'time', 0) + &l:updatetime / 100)
  call s:down()
  if (b:session.time % 7) is 0
    call s:move_kuribo()
  endif
  call b:session.redraw(s:map2lines())
endfunction

function! s:key_events(key)
  if a:key is 'l'
    call s:left()
    call s:down()
  elseif a:key is 'h'
    call s:right()
    call s:down()
  elseif a:key is ' '
    call s:jump()
  endif
endfunction
function! mario#start_game()
  call game_engine#start_game('[mario]', function('s:auto'))
  call s:init()
  let &l:list = 0
  let &l:updatetime = 100
  let &l:hlsearch = 0
  nnoremap <silent><buffer><nowait> q       :call game_engine#exit_game()<cr>
  nnoremap <silent><buffer><nowait> l       :call <sid>key_events('h')<cr>
  nnoremap <silent><buffer><nowait> h       :call <sid>key_events('l')<cr>
  nnoremap <silent><buffer><nowait> <space> :call <sid>key_events(' ')<cr>
  call b:session.redraw(s:map2lines())
  redraw!
endfunction

