" Only do this when not done yet for this buffer
if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

setlocal shiftwidth=4
setlocal tabstop=4
setlocal noexpandtab
setlocal smarttab
setlocal autoindent
setlocal smartindent