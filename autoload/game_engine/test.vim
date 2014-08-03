
scriptencoding utf-8

" let s:suite = themis#suite('Test for uilib.vim')
" let s:assert = themis#helper('assert')
"
" function! s:suite.uilib_split_0()
"   source ./uilib.vim
"   let float = -1
"   let width = 0
"   call s:assert.equals(uilib#split('あaいbうcえdおe', width, float, 1), [''])
"   call s:assert.equals(uilib#split('あaいbうcえdおe', width, float, 0), [''])
"   call s:assert.equals(uilib#split("あaいb\nうc\nえdおe", width, float, 0), [''])
"   call s:assert.equals(uilib#split("あaいb\nうc\nえdおe", width, float, 1), [''])
" endfunction
" function! s:suite.uilib_split_1()
"   source ./uilib.vim
"   let float = -1
"   let width = 1
"   call s:assert.equals(uilib#split('あaいbうcえdおe', width, float, 1), [' '])
"   call s:assert.equals(uilib#split('あaいbうcえdおe', width, float, 0), [' '])
"   call s:assert.equals(uilib#split('aあbいcうdえeお', width, float, 1), ['a', ' '])
"   call s:assert.equals(uilib#split('aあbいcうdえeお', width, float, 0), ['a'])
"   call s:assert.equals(uilib#split("あaいb\nうc\nえdおe", width, float, 0), [' ', ' ', ' ', ' ', ' '])
"   call s:assert.equals(uilib#split("あaいb\nうc\nえdおe", width, float, 1), [' ', ' ', ' ', ' ', ' '])
" endfunction
" function! s:suite.uilib_split_2()
"   source ./uilib.vim
"   let float = -1
"   let width = 2
"   call s:assert.equals(uilib#split('12', width, float, 1), ['12'])
"   call s:assert.equals(uilib#split('12', width, float, 0), ['12'])
"   call s:assert.equals(uilib#split('あ12', width, float, 1), ['あ', '12'])
"   call s:assert.equals(uilib#split('あ12', width, float, 0), ['あ'])
"   call s:assert.equals(uilib#split('あ1', width, float, 1), ['あ', '1 '])
"   call s:assert.equals(uilib#split('あ1', width, float, 0), ['あ'])
" endfunction
" function! s:suite.uilib_split_4()
"   source ./uilib.vim
"   let float = -1
"   let width = 4
"   call s:assert.equals(uilib#split("あaいb\nうc\nえdおe", width, float, 0), ['あa ', '    ', 'うc ', 'えd '])
"   call s:assert.equals(uilib#split("あaいb\nうc\nえdおe", width, float, 1), ['あa ', 'いb ', 'うc ', 'えd ', 'おe '])
" endfunction
" function! s:suite.uilib_split_5()
"   source ./uilib.vim
"   let float = -1
"   let width = 5
"   call s:assert.equals(uilib#split('1234567890abcde', width, float, 1), ['12345', '67890', 'abcde'])
"   call s:assert.equals(uilib#split('1234567890abcde', width, float, 0), ['12345'])
"   call s:assert.equals(uilib#split('あaいbうcえdおe', width, float, 1), ['あaい', 'bうc ', 'えdお', 'e    '])
"   call s:assert.equals(uilib#split('あaいbうcえdおe', width, float, 0), ['あaい'])
"   call s:assert.equals(uilib#split('1234567890', width, float, 1), ['12345', '67890'])
"   call s:assert.equals(uilib#split('1234567890', width, float, 0), ['12345'])
"   call s:assert.equals(uilib#split('あいうえお', width, float, 1), ['あい ', 'うえ ', 'お   '])
"   call s:assert.equals(uilib#split('あいうえお', width, float, 0), ['あい '])
"   call s:assert.equals(uilib#split('12345678', width, float, 1), ['12345', '678  '])
"   call s:assert.equals(uilib#split('12345678', width, float, 0), ['12345'])
"   let float = 1
"   call s:assert.equals(uilib#split('あいうえお', width, float, 1), [' あい', ' うえ', '   お'])
" endfunction
" function! s:suite.uilib_split_6()
"   source ./uilib.vim
"   let float = -1
"   let width = 6
"   call s:assert.equals(uilib#split('1234567890abcde', width, float, 1), ['123456', '7890ab', 'cde   '])
"   call s:assert.equals(uilib#split('1234567890abcde', width, float, 0), ['123456'])
"   call s:assert.equals(uilib#split('1234567890', width, float, 1), ['123456', '7890  '])
"   call s:assert.equals(uilib#split('1234567890', width, float, 0), ['123456'])
"   call s:assert.equals(uilib#split('あいうえお', width, float, 1), ['あいう', 'えお  '])
"   call s:assert.equals(uilib#split('あいうえお', width, float, 0), ['あいう'])
"   call s:assert.equals(uilib#split('12345678', width, float, 1), ['123456', '78    '])
"   call s:assert.equals(uilib#split('12345678', width, float, 0), ['123456'])
"   call s:assert.equals(uilib#split('12', width, float, 1), ['12    '])
"   call s:assert.equals(uilib#split('12', width, float, 0), ['12    '])
" endfunction
"
" function! s:suite.uilib_padding_0()
"   source ./uilib.vim
"   let width = 6
"   call s:assert.equals(uilib#padding('abc', width, -1), 'abc   ')
"   call s:assert.equals(uilib#padding('abc', width, 1),  '   abc')
"   call s:assert.equals(uilib#padding('abc', width, 0),  ' abc  ')
"   let width = 5
"   call s:assert.equals(uilib#padding('abc', width, -1), 'abc  ')
"   call s:assert.equals(uilib#padding('abc', width, 0),  ' abc ')
"   call s:assert.equals(uilib#padding('abc', width, 1),  '  abc')
"   let width = 0
"   call s:assert.equals(uilib#padding('abc', width, -1), '')
"   call s:assert.equals(uilib#padding('abc', width, 0), '')
"   call s:assert.equals(uilib#padding('abc', width, 1), '')
"   let width = -3
"   call s:assert.equals(uilib#padding('abc', width, -1), '')
"   call s:assert.equals(uilib#padding('abc', width, 0), '')
"   call s:assert.equals(uilib#padding('abc', width, 1), '')
" endfunction
"
" function! s:suite.uilib_override_0()
"   source ./uilib.vim
"   let float = 0
"   call s:assert.equals(uilib#override('AAAAA', 10, float, -2, 'BBB'), 'B AAAAA   ')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  0, 'BBB'), 'BBBAAAA   ')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  2, 'BBB'), '  BBBAA   ')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  4, 'BBB'), '  AABBB   ')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  6, 'BBB'), '  AAAABBB ')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  8, 'BBB'), '  AAAAA BB')
"   call s:assert.equals(uilib#override('AAAAA', 10, float, 10, 'BBB'), '  AAAAA   ')
"   call s:assert.equals(uilib#override('AAAAA', 10, float, 12, 'BBB'), '   AAAAA  ')
" endfunction
" function! s:suite.uilib_override_1()
"   source ./uilib.vim
"   let float = 1
"   call s:assert.equals(uilib#override('AAAAA', 10, float, -2, 'BBB'), 'B    AAAAA')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  0, 'BBB'), 'BBB  AAAAA')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  2, 'BBB'), '  BBBAAAAA')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  4, 'BBB'), '    BBBAAA')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  6, 'BBB'), '     ABBBA')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  8, 'BBB'), '     AAABB')
"   call s:assert.equals(uilib#override('AAAAA', 10, float, 10, 'BBB'), '     AAAAA')
"   call s:assert.equals(uilib#override('AAAAA', 10, float, 12, 'BBB'), '       AAA')
" endfunction
" function! s:suite.uilib_override_2()
"   source ./uilib.vim
"   let float = -1
"   call s:assert.equals(uilib#override('AAAAA', 10, float, -2, 'BBB'), 'BAAAA     ')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  0, 'BBB'), 'BBBAA     ')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  2, 'BBB'), 'AABBB     ')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  4, 'BBB'), 'AAAABBB   ')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  6, 'BBB'), 'AAAAA BBB ')
"   call s:assert.equals(uilib#override('AAAAA', 10, float,  8, 'BBB'), 'AAAAA   BB')
"   call s:assert.equals(uilib#override('AAAAA', 10, float, 10, 'BBB'), 'AAAAA     ')
"   call s:assert.equals(uilib#override('AAAAA', 10, float, 12, 'BBB'), 'AAAAA     ')
" endfunction

