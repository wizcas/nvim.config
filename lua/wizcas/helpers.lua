function IsWindows()
  return vim.loop.os_uname().sysname == 'Windows_NT'
end

function IsVsCode()
  local isVsCode = vim.fn.exists('g:vscode') > 0
end
