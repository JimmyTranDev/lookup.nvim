local constants = require("constants")
local actions = require("actions")
local enums = require("enums")

local Browser = enums.Browser
local website_name_to_query_url = constants.website_name_to_query_url
local selected_browser = Browser.FIREFOX

local function setup()
  vim.api.nvim_create_user_command(
    "Lookup",
    function(args)
      local searchEngineName = args.args
      actions.lookup(website_name_to_query_url[searchEngineName], selected_browser)
    end,
    { nargs = 1 }
  )
end

return {
  setup = setup
}
