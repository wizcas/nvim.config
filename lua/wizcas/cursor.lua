vim.cmd [[
" blink the cursor so it won't block the character
set guicursor=n-v-c-sm:blinkwait300-blinkon300-blinkoff300,i-ci-ve:ver25,r-cr-o:hor20

" reset cursor in terminal
augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:hor20-blinkwait300-blinkon200,blinkoff150
augroup END
]]
