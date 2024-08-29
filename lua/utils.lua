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


local function getOpenCommand(item)
  if vim.fn.has('mac') == 1 then
    return "open"
  elseif vim.fn.has('unix') == 1 then
    return "xdg-open"
  elseif vim.fn.has('win32') == 1 then
    return "start"
  elseif vim.fn.has('win64') == 1 then
    return "start"
  else
    print("Unsupported OS")
  end
end

return {
  urlencode = urlencode,
  getOpenCommand = getOpenCommand,
}
