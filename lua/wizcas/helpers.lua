function IsWindows()
  return vim.loop.os_uname().sysname == 'Windows_NT'
end
