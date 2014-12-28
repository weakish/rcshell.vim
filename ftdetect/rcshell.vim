au BufRead,BufNewFile .rcrc*,rcrc, set filetype=rcshell

function! s:DetecRcShell()
  let shebang = getline(1)
  if shebang =~# '\(/\|\s\)rc$'
      set filetype=rcshell
  endif
endfunction

autocmd BufNewFile,BufRead * call s:DetectRcShell()
