
scriptencoding utf-8

function! s:init()
  let s:mario_r = [
        \ ["     @R@R@R@R@R         "],
        \ ["    @R@R@R@R@R@R@R@R@R  "],
        \ ["    @B@B@B@B@w@B@w      "],
        \ ["    @w@w@w@B@w@w@w@w    "],
        \ ["    @w@w@w@w@w@B@B      "],
        \ ["     @w@w@w@w@w@w       "],
        \ ["    @R@R@B@B@R@B@B      "],
        \ ["   @R@R@R@B@B@B@B@B     "],
        \ ["    @B@w@R@B @B@B@B     "],
        \ ["     @B@B@B@B@B@B       "],
        \ ["    @R@R@R@R@R@R        "],
        \ ]
  let s:mario_l = [
        \ ["        @R@R@R@R@R      "],
        \ [" @R@R@R@R@R@R@R@R@R     "],
        \ ["     @w@B@w@B@B@B@B     "],
        \ ["   @w@w@w@w@B@w@w@w     "],
        \ ["     @B@B@w@w@w@w@w     "],
        \ ["      @w@w@w@w@w@w      "],
        \ ["     @B@B@R@B@B@R@R     "],
        \ ["    @B@B@B@B@B@R@R@R    "],
        \ ["    @B@B@B @B@R@w@B     "],
        \ ["      @B@B@B@B@B@B      "],
        \ ["       @R@R@R@R@R@R     "],
        \ ]
  let s:kuribo_l = [
        \ ["                        "],
        \ ["                        "],
        \ ["                        "],
        \ ["      @R@R@R@R@R        "],
        \ ["    @B@B@R@R@R@B@B      "],
        \ ["    @R@w@B@R@B@w@R      "],
        \ ["    @R@w@w@R@w@w@R@R    "],
        \ ["@R@R@R@R@R@R@R@R@R@R@R@R"],
        \ ["    @w@w@w@w@w@w@w      "],
        \ ["  @B@B @w@w@w @B@B@B    "],
        \ ["   @B@B@B   @B@B@B      "],
        \ ]
  let s:kuribo_r = [
        \ ["                        "],
        \ ["                        "],
        \ ["                        "],
        \ ["        @R@R@R@R@R      "],
        \ ["      @B@B@R@R@R@B@B    "],
        \ ["      @R@w@B@R@B@w@R    "],
        \ ["    @R@R@w@w@R@w@w@R    "],
        \ ["@R@R@R@R@R@R@R@R@R@R@R@R"],
        \ ["      @w@w@w@w@w@w@w    "],
        \ ["    @B@B@B @w@w@w @B@B  "],
        \ ["     @B@B@B   @B@B@B    "],
        \ ]
  let s:empty = [
        \ ["                        "],
        \ ["                        "],
        \ ["                        "],
        \ ["                        "],
        \ ["                        "],
        \ ["                        "],
        \ ["                        "],
        \ ["                        "],
        \ ["                        "],
        \ ["                        "],
        \ ["                        "],
        \ ]
  let s:field = [
        \ ["@F@F@F@F@F@F@F@F@F@F@F@F"],
        \ ["@F@F@F@F@F@F@F@F@F@F@F@F"],
        \ ["@F@F@F@F@F@F@F@F@F@F@F@F"],
        \ ["@F@F@F@F@F@F@F@F@F@F@F@F"],
        \ ["@F@F@F@F@F@F@F@F@F@F@F@F"],
        \ ["@F@F@F@F@F@F@F@F@F@F@F@F"],
        \ ["@F@F@F@F@F@F@F@F@F@F@F@F"],
        \ ["@F@F@F@F@F@F@F@F@F@F@F@F"],
        \ ["@F@F@F@F@F@F@F@F@F@F@F@F"],
        \ ["@F@F@F@F@F@F@F@F@F@F@F@F"],
        \ ["@F@F@F@F@F@F@F@F@F@F@F@F"],
        \ ]
  let s:pipe_top = [
        \ ["@G@G@G@G@G@G@G@G@G@G@G@G"],
        \ ["@G@G@G@G@G@G@G@G@G@G@G@G"],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ]
  let s:pipe_sub = [
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ["  @G@G@G@G@G@G@G@G@w@G  "],
        \ ]
  let s:block = [
        \ ["@b@b@b@b@b@b@b@b@b@b@b@b"],
        \ ["@b@b@b@b@b@b@b@b@b@b@b@b"],
        \ ["@b@b@b@b@b@b@b@b@b@b@b@b"],
        \ ["@b@b@b@b@b@b@b@b@b@b@b@b"],
        \ ["@b@b@b@b@b@b@b@b@b@b@b@b"],
        \ ["@b@b@b@b@b@b@b@b@b@b@b@b"],
        \ ["@b@b@b@b@b@b@b@b@b@b@b@b"],
        \ ["@b@b@b@b@b@b@b@b@b@b@b@b"],
        \ ["@b@b@b@b@b@b@b@b@b@b@b@b"],
        \ ["@b@b@b@b@b@b@b@b@b@b@b@b"],
        \ ["@b@b@b@b@b@b@b@b@b@b@b@b"],
        \ ]
  let s:char_G = [
        \ ["      @w@w@w@w@w@w      "],
        \ ["    @w@w@w@w@w@w@w@w    "],
        \ ["  @w@w@w        @w@w@w  "],
        \ ["  @w@w            @w@w  "],
        \ ["  @w@w                  "],
        \ ["  @w@w                  "],
        \ ["  @w@w          @w@w@w@w"],
        \ ["  @w@w@w        @w@w@w@w"],
        \ ["  @w@w@w          @w@w  "],
        \ ["    @w@w@w@w@w@w@w@w@w  "],
        \ ["    @w@w@w@w@w@w@w@w    "],
        \ ]
  let s:char_A = [
        \ ["        @w@w@w@w        "],
        \ ["      @w@w@w@w@w@w      "],
        \ ["    @w@w@w@w@w@w@w@w    "],
        \ ["    @w@w@w    @w@w@w    "],
        \ ["    @w@w        @w@w    "],
        \ ["  @w@w@w        @w@w@w  "],
        \ ["  @w@w@w@w@w@w@w@w@w@w  "],
        \ ["  @w@w@w@w@w@w@w@w@w@w  "],
        \ ["  @w@w@w        @w@w@w  "],
        \ ["@w@w@w@w        @w@w@w@w"],
        \ ["@w@w@w            @w@w@w"],
        \ ]
  let s:char_M = [
        \ ["@w@w@w            @w@w@w"],
        \ ["@w@w@w@w        @w@w@w@w"],
        \ ["@w@w@w@w        @w@w@w@w"],
        \ ["@w@w@w@w@w@w@w@w@w@w@w@w"],
        \ ["@w@w@w@w@w@w@w@w@w@w@w@w"],
        \ ["@w@w  @w@w@w@w@w@w  @w@w"],
        \ ["@w@w    @w@w@w@w    @w@w"],
        \ ["@w@w    @w@w@w@w    @w@w"],
        \ ["@w@w    @w@w@w@w    @w@w"],
        \ ["@w@w                @w@w"],
        \ ["@w@w                @w@w"],
        \ ]
  let s:char_E = [
        \ ["    @w@w@w@w@w@w@w@w@w  "],
        \ ["    @w@w@w@w@w@w@w@w@w  "],
        \ ["    @w@w                "],
        \ ["    @w@w                "],
        \ ["    @w@w@w@w@w@w@w@w@w  "],
        \ ["    @w@w@w@w@w@w@w@w@w  "],
        \ ["    @w@w@w@w@w@w@w@w@w  "],
        \ ["    @w@w                "],
        \ ["    @w@w                "],
        \ ["    @w@w@w@w@w@w@w@w@w  "],
        \ ["    @w@w@w@w@w@w@w@w@w  "],
        \ ]
  let s:char_O = [
        \ ["    @w@w@w@w@w@w@w@w    "],
        \ ["  @w@w@w@w@w@w@w@w@w@w  "],
        \ ["  @w@w@w@w    @w@w@w@w  "],
        \ ["@w@w@w@w@w    @w@w@w@w@w"],
        \ ["@w@w@w@w        @w@w@w@w"],
        \ ["@w@w@w@w        @w@w@w@w"],
        \ ["@w@w@w@w        @w@w@w@w"],
        \ ["@w@w@w@w@w    @w@w@w@w@w"],
        \ ["  @w@w@w@w    @w@w@w@w  "],
        \ ["  @w@w@w@w@w@w@w@w@w@w  "],
        \ ["    @w@w@w@w@w@w@w@w    "],
        \ ]
  let s:char_V = [
        \ ["@w@w@w@w        @w@w@w@w"],
        \ ["@w@w@w@w        @w@w@w@w"],
        \ ["@w@w@w@w@w    @w@w@w@w@w"],
        \ ["@w@w@w@w@w    @w@w@w@w@w"],
        \ ["@w@w@w@w@w    @w@w@w@w@w"],
        \ ["  @w@w@w@w    @w@w@w@w  "],
        \ ["  @w@w@w@w@w@w@w@w@w@w  "],
        \ ["    @w@w@w@w@w@w@w@w    "],
        \ ["    @w@w@w@w@w@w@w@w    "],
        \ ["    @w@w@w@w@w@w@w@w    "],
        \ ["        @w@w@w@w        "],
        \ ]
  let s:char_R = [
        \ ["    @w@w@w@w@w@w@w      "],
        \ ["    @w@w@w@w@w@w@w@w@w  "],
        \ ["    @w@w        @w@w@w  "],
        \ ["    @w@w        @w@w@w  "],
        \ ["    @w@w    @w@w@w@w@w  "],
        \ ["    @w@w@w@w@w@w@w@w    "],
        \ ["    @w@w@w@w@w@w        "],
        \ ["    @w@w@w@w@w@w@w      "],
        \ ["    @w@w  @w@w@w@w@w    "],
        \ ["    @w@w      @w@w@w@w  "],
        \ ["    @w@w        @w@w@w  "],
        \ ]
  let s:char_N = [
        \ ["  @w@w@w@w        @w@w  "],
        \ ["  @w@w@w@w        @w@w  "],
        \ ["  @w@w@w@w@w      @w@w  "],
        \ ["  @w@w@w@w@w      @w@w  "],
        \ ["  @w@w@w@w@w@w@w  @w@w  "],
        \ ["  @w@w@w@w@w@w@w@w@w@w  "],
        \ ["  @w@w  @w@w@w@w@w@w@w  "],
        \ ["  @w@w      @w@w@w@w@w  "],
        \ ["  @w@w      @w@w@w@w@w  "],
        \ ["  @w@w        @w@w@w@w  "],
        \ ["  @w@w        @w@w@w@w  "],
        \ ]
  let s:char_D = [
        \ ["  @w@w@w@w@w@w@w@w      "],
        \ ["  @w@w@w@w@w@w@w@w@w    "],
        \ ["  @w@w      @w@w@w@w@w  "],
        \ ["  @w@w        @w@w@w@w  "],
        \ ["  @w@w          @w@w@w  "],
        \ ["  @w@w          @w@w@w  "],
        \ ["  @w@w          @w@w@w  "],
        \ ["  @w@w        @w@w@w@w  "],
        \ ["  @w@w      @w@w@w@w@w  "],
        \ ["  @w@w@w@w@w@w@w@w@w    "],
        \ ["  @w@w@w@w@w@w@w@w      "],
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
    let r = game_engine#rand(len(xs))
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
function! s:get_offset()
  return get(b:session, 'offset', 0)
endfunction
function! s:swap(a_row, a_col, b_row, b_col)
  let temp = s:map[(a:a_row)][(a:a_col)]
  let s:map[(a:a_row)][(a:a_col)] = s:map[(a:b_row)][(a:b_col)]
  let s:map[(a:b_row)][(a:b_col)] = temp
endfunction
function! s:map2lines()
  let b:session.offset = s:get_offset()
  let data = map(deepcopy(s:map), 'v:val[(b:session.offset):(b:session.offset+10)]')
  let scale_dict = {
        \    s:E_ : s:empty,
        \    s:KL : s:kuribo_l,
        \    s:KR : s:kuribo_r,
        \    s:MR : s:mario_r,
        \    s:ML : s:mario_l,
        \    s:F_ : s:field,
        \    s:PT : s:pipe_top,
        \    s:PS : s:pipe_sub,
        \    s:B_ : s:block,
        \    s:CG : s:char_G,
        \    s:CA : s:char_A,
        \    s:CM : s:char_M,
        \    s:CE : s:char_E,
        \    s:CO : s:char_O,
        \    s:CV : s:char_V,
        \    s:CR : s:char_R,
        \    s:CN : s:char_N,
        \    s:CD : s:char_D,
        \ }
  return map(game_engine#scale2d(data, scale_dict, s:empty), 'join(v:val,"")')
endfunction
function! s:move_kuribo()
  let moved_kuribo_positions = {}

  for lnum in range(0, len(s:map) - 1)
    for c in range(1, len(s:map[0]) - 1)
      let key = printf('%d-%d', lnum, c)
      if s:map[lnum][c] is s:KL && !has_key(moved_kuribo_positions, key)
        if s:map[lnum][c - 1] is s:E_
          call s:swap(lnum, c - 1, lnum, c)
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
          call s:swap(lnum, c + 1, lnum, c)
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
  for c in range(s:get_offset() + 5, len(s:map[0]) - 1)
    for lnum in range(0, len(s:map) - 1)
      if (s:map[lnum][c] is s:MR || s:map[lnum][c] is s:ML)
        let b:session.offset = s:get_offset() + 1
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
          call s:swap(lnum - 1, c, lnum, c)
          break
        elseif (s:map[lnum][c] is s:KR || s:map[lnum][c] is s:KL)
          let s:map[lnum][c] = s:E_
          break
        endif
      elseif (s:map[lnum - 1][c] is s:KR || s:map[lnum - 1][c] is s:KL)
        if s:map[lnum][c] is s:E_
          call s:swap(lnum - 1, c, lnum, c)
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
              call s:swap(lnum + 1, c, lnum, c)
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
    for c in range(s:get_offset() + 0, len(s:map[0]) - 1 - 1)
      if (s:map[lnum][c] is s:MR || s:map[lnum][c] is s:ML)
        if s:map[lnum][c + 1] is s:E_
          let s:map[lnum][c] = s:MR
          call s:swap(lnum, c + 1, lnum, c)
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
    for c in range(s:get_offset() + 1, len(s:map[0]) - 1)
      if (s:map[lnum][c] is s:MR || s:map[lnum][c] is s:ML)
        if s:map[lnum][c - 1] is s:E_
          let s:map[lnum][c] = s:ML
          call s:swap(lnum, c - 1, lnum, c)
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
  let s:map[1][(s:get_offset() + 0)] = s:CG
  let s:map[1][(s:get_offset() + 1)] = s:CA
  let s:map[1][(s:get_offset() + 2)] = s:CM
  let s:map[1][(s:get_offset() + 3)] = s:CE
  let s:map[2][(s:get_offset() + 1)] = s:CO
  let s:map[2][(s:get_offset() + 2)] = s:CV
  let s:map[2][(s:get_offset() + 3)] = s:CE
  let s:map[2][(s:get_offset() + 4)] = s:CR
  call b:session.redraw(s:map2lines())
  redraw!
  while getchar() isnot char2nr('q')
  endwhile
  call game_engine#exit_game()
endfunction
function! s:gameend()
  let s:map[1][(s:get_offset() + 0)] = s:CE
  let s:map[1][(s:get_offset() + 1)] = s:CN
  let s:map[1][(s:get_offset() + 2)] = s:CD
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
  let &l:updatetime = 100
  nnoremap <silent><buffer><nowait> q       :call game_engine#exit_game()<cr>
  nnoremap <silent><buffer><nowait> l       :call <sid>key_events('h')<cr>
  nnoremap <silent><buffer><nowait> h       :call <sid>key_events('l')<cr>
  nnoremap <silent><buffer><nowait> <space> :call <sid>key_events(' ')<cr>
  call b:session.redraw(s:map2lines())
  redraw!
endfunction

