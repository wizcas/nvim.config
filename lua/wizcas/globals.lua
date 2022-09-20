local function read_cmd_return(cmd)
  local handle = io.popen(cmd)
  local result = ''
  if handle ~= nil then
    result = handle:read("*a")
    handle:close()
  end
  return result
end

print('node path: ' .. read_cmd_return('which node'))
print('whoami: ' .. read_cmd_return('whoami'))
