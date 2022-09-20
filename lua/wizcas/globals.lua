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
print('home: ', os.getenv('HOME'))

print('node exists:', vim.fn.executable('node'))

local function find_node()
  print('finding node binary...')
  local home = os.getenv('HOME')
  local possible_node_paths = {
    home .. '/.volta/bin/node'
  }
  for _, path in pairs(possible_node_paths) do
    if os.execute('command -v ' .. path) then
      print('node found at ' .. path)
      return path
    end
  end
  return nil
end

local node_ok = vim.fn.executable('node') > 0
if not node_ok and not IsWindows() then
  vim.g.coc_node_path = find_node()
end

