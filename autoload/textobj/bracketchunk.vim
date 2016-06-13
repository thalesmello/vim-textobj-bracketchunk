function! textobj#bracketchunk#select()
    silent! normal! [{
    let head_pos = getpos('.')
    normal! %
    let tail_pos = getpos('.')
    if tail_pos == head_pos
        return 0
    endif
    return ['V', head_pos, tail_pos]
endfunction
