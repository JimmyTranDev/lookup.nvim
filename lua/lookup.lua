local constants = require("constants")
local actions = require("actions")
local enums = require("enums")

local website_name_to_query_url = constants.website_name_to_query_url

local function setup(options)
  vim.api.nvim_create_user_command(
    "Lookup",
    function(args)
      local searchEngineName = args.args
      actions.lookup(website_name_to_query_url[searchEngineName], options.browser_command)
    end,
    { nargs = 1 }
  )
end

return {
  setup = setup,
  BrowswerCommand = enums.BrowserCommand
}
