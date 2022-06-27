vim.cmd [[
" blink the cursor so it won't block the character
set guicursor=n-v-c-sm:blinkwait100-blinkon100-blinkoff50,i-ci-ve:ver25,r-cr-o:hor20

" reset cursor in terminal
augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:hor20-blinkwait300-blinkon200,blinkoff150
augroup END
]]
