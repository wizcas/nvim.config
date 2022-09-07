vim.cmd([[
  inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
  hi CocMenuSel ctermbg=109 guibg=#13354A
  autocmd VimEnter,ColorScheme * hi! link CocFloating CocHintFloat
]])

if IsVsCode() then
  vim.cmd [[
    CocDisable
  ]]
end
