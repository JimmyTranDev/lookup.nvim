local utils = require('utils')

local function lookup(search_engine_url, open_command)
  if open_command == nil then
    open_command = utils.getOpenCommand()
  end

  local search_query = vim.fn.input("Search: ")
  if search_query == "" then
    return
  end

  local encoded_search_query = utils.urlencode(search_query)
  local url = search_engine_url .. encoded_search_query
  vim.fn.jobstart({ open_command, url })
end

local function lookupSelected(search_engine_url, open_command)
  if open_command == nil then
    open_command = utils.getOpenCommand()
  end

  local search_query = vim.fn.getreg("*")
  if search_query == "" then
    return
  end

  local encoded_search_query = utils.urlencode(search_query)
  local url = search_engine_url .. encoded_search_query
  vim.fn.jobstart({ open_command, url })
end

return {
  lookup = lookup,
  lookupSelected = lookupSelected,
}
