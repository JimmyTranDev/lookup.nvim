local constants = require("constants")
local OS = constants.OS

local function get_os()
  local os = vim.loop.os_uname().sysname
  if os == "Linux" then
    return OS.LINUX
  elseif os == "Darwin" then
    return OS.MAC
  elseif os == "Windows" then
    return OS.WINDOWS
  end
end

return {
  get_os = get_os
}
