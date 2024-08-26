local utils = require('utils')

local function lookup(search_engine_url, browser)
  local search_query = vim.fn.input("Search: ")
  if search_query == "" then
    return
  end

  local encoded_search_query = utils.urlencode(search_query)
  local url = search_engine_url .. encoded_search_query
  vim.fn.jobstart({ browser, url })
end

return {
  lookup = lookup
}
