local constants = require("constants")
local Browser = constants.Browser
local selected_browser = Browser.CHROME

local function lookup_input(search_engine_url, browser)
  return function()
    local input = vim.fn.input("Search: ")
    if input == "" then
      return
    end
    local url = search_engine_url .. input
    vim.fn.jobstart({ browser, url })
  end
end

local function create_lookup_input_command(command_name, search_engine_url)
  vim.api.nvim_create_user_command(
    command_name,
    lookup_input(search_engine_url, selected_browser),
    { nargs = 0 }
  )
end

local function setup()
  for _, lookup_input_table in ipairs(constants.lookup_input_table) do
    create_lookup_input_command(lookup_input_table.command_name, lookup_input_table.search_engine_url)
  end
end

return {
  setup = setup
}
