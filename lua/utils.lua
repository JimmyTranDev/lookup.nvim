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

local char_to_hex = function(c)
  return string.format("%%%02X", string.byte(c))
end

local function urlencode(url)
  if url == nil then
    return
  end
  url = url:gsub("\n", "\r\n")
  url = url:gsub("([^%w ])", char_to_hex)
  url = url:gsub(" ", "+")
  return url
end

return {
  get_os = get_os,
  urlencode = urlencode,
}
