local constants = require("constants")
local utils = require("utils")
local Browser = constants.Browser
local SearchEngineUrl = constants.SearchEngineUrl
local selected_browser = Browser.FIREFOX

local function lookup_input(search_engine_url, browser)
  local search_query = vim.fn.input("Search: ")
  if search_query == "" then
    return
  end

  local encoded_search_query = utils.urlencode(search_query)
  local url = search_engine_url .. encoded_search_query
  vim.fn.jobstart({ browser, url })
end

local function setup()
  vim.api.nvim_create_user_command(
    "LookupInput",
    function(args)
      print(SearchEngineUrl[args.args])
      lookup_input(SearchEngineUrl[args.args], selected_browser)
    end,
    { nargs = 1 }
  )
end

return {
  setup = setup
}
