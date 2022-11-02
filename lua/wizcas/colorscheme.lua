vim.cmd [[
set background=dark
try
  colorscheme night-owl
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
endtry
]]
