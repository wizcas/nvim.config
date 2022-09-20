function IsWindows()
  return vim.loop.os_uname().sysname == 'Windows_NT'
end

function IsVsCode()
  return vim.fn.exists('g:vscode') > 0
end
