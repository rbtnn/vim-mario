
scriptencoding utf-8

function! s:init()
  let N = ' '

  let syntax_dict = game_engine#syntax()
  let R = syntax_dict.Red.text
  let B = syntax_dict.Blue.text
  let w = syntax_dict.White.text
  let G = syntax_dict.Green.text
  let g = syntax_dict.Gray.text
  let b = syntax_dict.DarkRed.text

  let s:mario_r = [
  \ [join([ N, N, N, N, N, R, R, R, R, R, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, R, R, R, R, R, R, R, R, R, N, N ], '')],
  \ [join([ N, N, N, N, B, B, B, B, w, B, w, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, B, w, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, B, B, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, w, w, w, w, w, w, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, R, R, B, B, R, B, B, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, R, R, R, B, B, B, B, B, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, B, w, R, B, N, B, B, B, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, B, B, B, B, B, B, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, R, R, R, R, R, R, N, N, N, N, N, N, N, N ], '')],
  \ ]
  let s:mario_l = [
  \ [join([ N, N, N, N, N, N, N, N, R, R, R, R, R, N, N, N, N, N, N ], '')],
  \ [join([ N, R, R, R, R, R, R, R, R, R, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, w, B, w, B, B, B, B, N, N, N, N, N ], '')],
  \ [join([ N, N, N, w, w, w, w, B, w, w, w, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, B, B, w, w, w, w, w, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, w, w, w, w, w, w, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, B, B, R, B, B, R, R, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, B, B, B, B, B, R, R, R, N, N, N, N ], '')],
  \ [join([ N, N, N, N, B, B, B, N, B, R, w, B, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, B, B, B, B, B, B, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, R, R, R, R, R, R, N, N, N, N, N ], '')],
  \ ]
  let s:kuribo_l = [
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, R, R, R, R, R, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, B, B, R, R, R, B, B, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, R, w, B, R, B, w, R, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, R, w, w, R, w, w, R, R, N, N, N, N ], '')],
  \ [join([ R, R, R, R, R, R, R, R, R, R, R, R ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, N, N, N, N, N, N ], '')],
  \ [join([ N, N, B, B, N, w, w, w, N, B, B, B, N, N, N, N ], '')],
  \ [join([ N, N, N, B, B, B, N, N, N, B, B, B, N, N, N, N, N, N ], '')],
  \ ]
  let s:kuribo_r = [
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, R, R, R, R, R, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, B, B, R, R, R, B, B, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, R, w, B, R, B, w, R, N, N, N, N ], '')],
  \ [join([ N, N, N, N, R, R, w, w, R, w, w, R, N, N, N, N ], '')],
  \ [join([ R, R, R, R, R, R, R, R, R, R, R, R ], '')],
  \ [join([ N, N, N, N, N, N, w, w, w, w, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, N, N, B, B, B, N, w, w, w, N, B, B, N, N ], '')],
  \ [join([ N, N, N, N, N, B, B, B, N, N, N, B, B, B, N, N, N, N ], '')],
  \ ]
  let s:empty = [
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ ]
  let s:field = [
  \ [join([ g, g, g, g, g, g, g, g, g, g, g, g ], '')],
  \ [join([ g, g, g, g, g, g, g, g, g, g, g, g ], '')],
  \ [join([ g, g, g, g, g, g, g, g, g, g, g, g ], '')],
  \ [join([ g, g, g, g, g, g, g, g, g, g, g, g ], '')],
  \ [join([ g, g, g, g, g, g, g, g, g, g, g, g ], '')],
  \ [join([ g, g, g, g, g, g, g, g, g, g, g, g ], '')],
  \ [join([ g, g, g, g, g, g, g, g, g, g, g, g ], '')],
  \ [join([ g, g, g, g, g, g, g, g, g, g, g, g ], '')],
  \ [join([ g, g, g, g, g, g, g, g, g, g, g, g ], '')],
  \ [join([ g, g, g, g, g, g, g, g, g, g, g, g ], '')],
  \ [join([ g, g, g, g, g, g, g, g, g, g, g, g ], '')],
  \ ]
  let s:pipe_top = [
  \ [join([ G, G, G, G, G, G, G, G, G, G, G, G ], '')],
  \ [join([ G, G, G, G, G, G, G, G, G, G, G, G ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ ]
  let s:pipe_sub = [
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ [join([ N, N, G, G, G, G, G, G, G, G, w, G, N, N ], '')],
  \ ]
  let s:block = [
  \ [join([ b, b, b, b, b, b, b, b, b, b, b, b ], '')],
  \ [join([ b, b, b, b, b, b, b, b, b, b, b, b ], '')],
  \ [join([ b, b, b, b, b, b, b, b, b, b, b, b ], '')],
  \ [join([ b, b, b, b, b, b, b, b, b, b, b, b ], '')],
  \ [join([ b, b, b, b, b, b, b, b, b, b, b, b ], '')],
  \ [join([ b, b, b, b, b, b, b, b, b, b, b, b ], '')],
  \ [join([ b, b, b, b, b, b, b, b, b, b, b, b ], '')],
  \ [join([ b, b, b, b, b, b, b, b, b, b, b, b ], '')],
  \ [join([ b, b, b, b, b, b, b, b, b, b, b, b ], '')],
  \ [join([ b, b, b, b, b, b, b, b, b, b, b, b ], '')],
  \ [join([ b, b, b, b, b, b, b, b, b, b, b, b ], '')],
  \ ]
  let s:char_G = [
  \ [join([ N, N, N, N, N, N, w, w, w, w, w, w, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, w, w, w, N, N, N, N, N, N, N, N, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, N, N, N, N, N, N, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, N, N, N, N, w, w, w, w ], '')],
  \ [join([ N, N, w, w, w, N, N, N, N, N, N, N, N, w, w, w, w ], '')],
  \ [join([ N, N, w, w, w, N, N, N, N, N, N, N, N, N, N, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, N, N, N, N ], '')],
  \ ]
  let s:char_A = [
  \ [join([ N, N, N, N, N, N, N, N, w, w, w, w, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, w, w, w, w, w, w, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, N, N, N, N, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, N, N, N, N, N, N, N, N, w, w, N, N, N, N ], '')],
  \ [join([ N, N, w, w, w, N, N, N, N, N, N, N, N, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, w, N, N, N, N, N, N, N, N, w, w, w, N, N ], '')],
  \ [join([ w, w, w, w, N, N, N, N, N, N, N, N, w, w, w, w ], '')],
  \ [join([ w, w, w, N, N, N, N, N, N, N, N, N, N, N, N, w, w, w ], '')],
  \ ]
  let s:char_M = [
  \ [join([ w, w, w, N, N, N, N, N, N, N, N, N, N, N, N, w, w, w ], '')],
  \ [join([ w, w, w, w, N, N, N, N, N, N, N, N, w, w, w, w ], '')],
  \ [join([ w, w, w, w, N, N, N, N, N, N, N, N, w, w, w, w ], '')],
  \ [join([ w, w, w, w, w, w, w, w, w, w, w, w ], '')],
  \ [join([ w, w, w, w, w, w, w, w, w, w, w, w ], '')],
  \ [join([ w, w, N, N, w, w, w, w, w, w, N, N, w, w ], '')],
  \ [join([ w, w, N, N, N, N, w, w, w, w, N, N, N, N, w, w ], '')],
  \ [join([ w, w, N, N, N, N, w, w, w, w, N, N, N, N, w, w ], '')],
  \ [join([ w, w, N, N, N, N, w, w, w, w, N, N, N, N, w, w ], '')],
  \ [join([ w, w, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, w, w ], '')],
  \ [join([ w, w, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, w, w ], '')],
  \ ]
  let s:char_E = [
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ ]
  let s:char_O = [
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, w, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, w, w, N, N, N, N, w, w, w, w, N, N ], '')],
  \ [join([ w, w, w, w, w, N, N, N, N, w, w, w, w, w ], '')],
  \ [join([ w, w, w, w, N, N, N, N, N, N, N, N, w, w, w, w ], '')],
  \ [join([ w, w, w, w, N, N, N, N, N, N, N, N, w, w, w, w ], '')],
  \ [join([ w, w, w, w, N, N, N, N, N, N, N, N, w, w, w, w ], '')],
  \ [join([ w, w, w, w, w, N, N, N, N, w, w, w, w, w ], '')],
  \ [join([ N, N, w, w, w, w, N, N, N, N, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, N, N, N, N ], '')],
  \ ]
  let s:char_V = [
  \ [join([ w, w, w, w, N, N, N, N, N, N, N, N, w, w, w, w ], '')],
  \ [join([ w, w, w, w, N, N, N, N, N, N, N, N, w, w, w, w ], '')],
  \ [join([ w, w, w, w, w, N, N, N, N, w, w, w, w, w ], '')],
  \ [join([ w, w, w, w, w, N, N, N, N, w, w, w, w, w ], '')],
  \ [join([ w, w, w, w, w, N, N, N, N, w, w, w, w, w ], '')],
  \ [join([ N, N, w, w, w, w, N, N, N, N, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, N, N, N, N, N, N, w, w, w, w, N, N, N, N, N, N, N, N ], '')],
  \ ]
  let s:char_R = [
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, N, N, N, N, N, N, N, N, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, N, N, N, N, N, N, N, N, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, N, N, N, N, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, N, N, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, w, w, w, w, w, N, N, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, N, N, w, w, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, N, N, w, w, N, N, N, N, N, N, w, w, w, w, N, N ], '')],
  \ [join([ N, N, N, N, w, w, N, N, N, N, N, N, N, N, w, w, w, N, N ], '')],
  \ ]
  let s:char_N = [
  \ [join([ N, N, w, w, w, w, N, N, N, N, N, N, N, N, w, w, N, N ], '')],
  \ [join([ N, N, w, w, w, w, N, N, N, N, N, N, N, N, w, w, N, N ], '')],
  \ [join([ N, N, w, w, w, w, w, N, N, N, N, N, N, w, w, N, N ], '')],
  \ [join([ N, N, w, w, w, w, w, N, N, N, N, N, N, w, w, N, N ], '')],
  \ [join([ N, N, w, w, w, w, w, w, w, N, N, w, w, N, N ], '')],
  \ [join([ N, N, w, w, w, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, w, w, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, N, N, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, N, N, w, w, w, w, N, N ], '')],
  \ ]
  let s:char_D = [
  \ [join([ N, N, w, w, w, w, w, w, w, w, N, N, N, N, N, N ], '')],
  \ [join([ N, N, w, w, w, w, w, w, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, N, N, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, N, N, N, N, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, N, N, N, N, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, N, N, N, N, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, N, N, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, N, N, N, N, N, N, w, w, w, w, w, N, N ], '')],
  \ [join([ N, N, w, w, w, w, w, w, w, w, w, N, N, N, N ], '')],
  \ [join([ N, N, w, w, w, w, w, w, w, w, N, N, N, N, N, N ], '')],
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

  let b:session.map = [
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
    for lnum in range(0, len(b:session.map) - 1)
      let b:session.map[lnum] += x[lnum]
    endfor
  endwhile
endfunction
function! s:get_offset()
  return get(b:session, 'offset', 0)
endfunction
function! s:swap(a_row, a_col, b_row, b_col)
  let temp = b:session.map[(a:a_row)][(a:a_col)]
  let b:session.map[(a:a_row)][(a:a_col)] = b:session.map[(a:b_row)][(a:b_col)]
  let b:session.map[(a:b_row)][(a:b_col)] = temp
endfunction
function! s:map2lines()
  let b:session.offset = s:get_offset()
  let data = map(deepcopy(b:session.map), 'v:val[(b:session.offset):(b:session.offset+10)]')
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

  for lnum in range(0, len(b:session.map) - 1)
    for c in range(1, len(b:session.map[0]) - 1)
      let key = printf('%d-%d', lnum, c)
      if b:session.map[lnum][c] is s:KL && !has_key(moved_kuribo_positions, key)
        if b:session.map[lnum][c - 1] is s:E_
          call s:swap(lnum, c - 1, lnum, c)
          let moved_kuribo_positions[key] = 1
        elseif b:session.map[lnum][c - 1] is s:ML || b:session.map[lnum][c - 1] is s:MR
          call s:gameover()
          return 0
        else
          let b:session.map[lnum][c] = s:KR
        endif
      endif
    endfor
  endfor

  for lnum in range(0, len(b:session.map) - 1)
    for c in range(len(b:session.map[0]) - 1 - 1, 0, -1)
      let key = printf('%d-%d', lnum, c)
      if b:session.map[lnum][c] is s:KR && !has_key(moved_kuribo_positions, key)
        if b:session.map[lnum][c + 1] is s:E_
          call s:swap(lnum, c + 1, lnum, c)
          let moved_kuribo_positions[key] = 1
        elseif b:session.map[lnum][c + 1] is s:ML || b:session.map[lnum][c + 1] is s:MR
          call s:gameover()
          return 0
        else
          let b:session.map[lnum][c] = s:KL
        endif
      endif
    endfor
  endfor

endfunction
function! s:is_jumping()
  for c in range(0, len(b:session.map[0]) - 1)
    for lnum in range(1, len(b:session.map) - 1)
      if (b:session.map[lnum - 1][c] is s:MR || b:session.map[lnum - 1][c] is s:ML) && b:session.map[lnum][c] is s:E_
        return 1
      endif
    endfor
  endfor
  return 0
endfunction
function! s:scroll()
  for c in range(s:get_offset() + 5, len(b:session.map[0]) - 1)
    for lnum in range(0, len(b:session.map) - 1)
      if (b:session.map[lnum][c] is s:MR || b:session.map[lnum][c] is s:ML)
        let b:session.offset = s:get_offset() + 1
        return 1
      endif
    endfor
  endfor
  return 0
endfunction

function! s:down()
  if exists('b:session')
    for lnum in range(len(b:session.map) - 1, 1, -1)
      for c in range(0, len(b:session.map[0]) - 1)
        if (b:session.map[lnum - 1][c] is s:MR || b:session.map[lnum - 1][c] is s:ML)
          if b:session.map[lnum][c] is s:E_
            call s:swap(lnum - 1, c, lnum, c)
            break
          elseif (b:session.map[lnum][c] is s:KR || b:session.map[lnum][c] is s:KL)
            let b:session.map[lnum][c] = s:E_
            break
          endif
        elseif (b:session.map[lnum - 1][c] is s:KR || b:session.map[lnum - 1][c] is s:KL)
          if b:session.map[lnum][c] is s:E_
            call s:swap(lnum - 1, c, lnum, c)
            break
          endif
        endif
      endfor
    endfor
  endif
endfunction
function! s:jump()
  if ! s:is_jumping()
    for _ in range(0,3)
      for c in range(0, len(b:session.map[0]) - 1)
        for lnum in range(0, len(b:session.map) - 1 - 1)
          if (b:session.map[lnum + 1][c] is s:MR || b:session.map[lnum + 1][c] is s:ML)
            if b:session.map[lnum][c] is s:E_
              call s:swap(lnum + 1, c, lnum, c)
              break
            elseif b:session.map[lnum][c] is s:B_
              let b:session.map[lnum][c] = s:E_
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
  for lnum in range(0, len(b:session.map) - 1)
    for c in range(s:get_offset() + 0, len(b:session.map[0]) - 1 - 1)
      if (b:session.map[lnum][c] is s:MR || b:session.map[lnum][c] is s:ML)
        if b:session.map[lnum][c + 1] is s:E_
          let b:session.map[lnum][c] = s:MR
          call s:swap(lnum, c + 1, lnum, c)
          let moved = 1
          if c + 1 is len(b:session.map[0]) - 1
            call s:gameend()
            return 0
          endif
          break
        elseif b:session.map[lnum][c + 1] is s:KR || b:session.map[lnum][c + 1] is s:KL
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
  for lnum in range(0, len(b:session.map) - 1)
    for c in range(s:get_offset() + 1, len(b:session.map[0]) - 1)
      if (b:session.map[lnum][c] is s:MR || b:session.map[lnum][c] is s:ML)
        if b:session.map[lnum][c - 1] is s:E_
          let b:session.map[lnum][c] = s:ML
          call s:swap(lnum, c - 1, lnum, c)
          let moved = 1
          break
        elseif b:session.map[lnum][c - 1] is s:KR || b:session.map[lnum][c - 1] is s:KL
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
  let b:session.map[1][(s:get_offset() + 0)] = s:CG
  let b:session.map[1][(s:get_offset() + 1)] = s:CA
  let b:session.map[1][(s:get_offset() + 2)] = s:CM
  let b:session.map[1][(s:get_offset() + 3)] = s:CE
  let b:session.map[2][(s:get_offset() + 1)] = s:CO
  let b:session.map[2][(s:get_offset() + 2)] = s:CV
  let b:session.map[2][(s:get_offset() + 3)] = s:CE
  let b:session.map[2][(s:get_offset() + 4)] = s:CR
  call b:session.redraw(s:map2lines())
  redraw!
  while getchar() isnot char2nr('q')
  endwhile
  call game_engine#exit_game()
endfunction
function! s:gameend()
  let b:session.map[1][(s:get_offset() + 0)] = s:CE
  let b:session.map[1][(s:get_offset() + 1)] = s:CN
  let b:session.map[1][(s:get_offset() + 2)] = s:CD
  call b:session.redraw(s:map2lines())
  redraw!
  while getchar() isnot char2nr('q')
  endwhile
  call game_engine#exit_game()
endfunction

function! s:auto()
  if exists('b:session')
    let b:session.time = (get(b:session, 'time', 0) + &l:updatetime / 100)
    call s:down()
    if (b:session.time % 7) is 0
      call s:move_kuribo()
    endif
    call b:session.redraw(s:map2lines())
  endif
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
  nnoremap <silent><buffer><nowait> S       :call game_engine#save_game('[mario]', 1)<cr>
  nnoremap <silent><buffer><nowait> L       :call game_engine#load_game('[mario]', 1)<cr>
  call b:session.redraw(s:map2lines())
  redraw!
endfunction

