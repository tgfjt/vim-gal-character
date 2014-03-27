"=============================================================================
" vimgalchar.vim
" Author: tgfjt
" License: NYSL
" script type: plugin

scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

if exists("g:loaded_vimgalchar")
  finish
endif
let g:loaded_vimgalchar = 1

let s:save_cpo = &cpo
set cpo&vim

function! s:GalChar()
  let before_gal_character = ["あ", "い", "う", "え", "お", "や", "ゆ", "よ", "わ", "つ", "は", "。"]
  let after_gal_character = ["ぁ", "ぃ", "ぅ", "ぇ", "ぉ", "ゃ", "ゅ", "ょ", "ゎ", "っ", "ゎ", "o"]
  let current_line = getline('.')

  let c = 0

  while c < len(before_gal_character)
    let current_line = substitute(current_line, before_gal_character[c], after_gal_character[c], "g")
    let c += 1
  endwhile

  call setline('.', current_line)

endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

command! -nargs=0 ConvertGalChar call s:GalChar()
