setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
set comments=fb:>,fb:*,fb:+,fb:-
setlocal conceallevel=0

autocmd BufNewFile,BufRead */src/architecture/rfcs/*/*.md setlocal textwidth=80
