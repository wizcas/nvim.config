local ok, autoSession = pcall(require, "auto-session")
if not ok then
  return
end

autoSession.setup {
  log_level = 'info',
  auto_session_suppress_dirs = {'~/'}
}
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
