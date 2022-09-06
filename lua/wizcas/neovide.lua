if vim.fn.exists('g:neovide') then
  vim.cmd [[
  let g:neovide_floating_blur_amount_x = 4.0
  let g:neovide_floating_blur_amount_y = 4.0
  let g:neovide_remember_window_size = v:true
  let g:neovide_cursor_vfx_mode = "pixiedust"
  let g:neovide_cursor_vfx_particle_density=32.0
  ]]
end
