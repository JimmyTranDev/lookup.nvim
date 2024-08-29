local constants = require("constants")
local actions = require("actions")
local enums = require("enums")

local website_name_to_query_url = constants.website_name_to_query_url

local function setup(options)
  vim.api.nvim_create_user_command(
    "Lookup",
    function(args)
      local searchEngineName = args.args
      if options ~= nil then
        actions.lookup(website_name_to_query_url[searchEngineName], options.browser_command)
      else
        actions.lookup(website_name_to_query_url[searchEngineName])
      end
    end,
    { nargs = 1 }
  )
  vim.api.nvim_create_user_command(
    "LookupSelected",
    function(args)
      local searchEngineName = args.args
      actions.lookupSelected(website_name_to_query_url[searchEngineName], options.browser_command)
    end,
    { nargs = 1 }
  )
end

return {
  setup = setup,
  BrowswerCommand = enums.BrowserCommand
}
