# 🔍 lookup.nvim
Lookup anything anything on the web easily

NOTE: This plugin is in pre-alpha so don't use this plugin. It will not work

## 📦 Installation
### Lazy
```lua
{
  "JimmyTranDev/lookup.nvim"
  name = "lookup.nvim",
  keys = {
    { mode = { "n", "v" }, "<leader>sg", ":Lookup google<CR>", desc = "Google" },
    { mode = { "n", "v" }, "<leader>sb", ":Lookup bing<CR>", desc = "Bing" },
    { mode = { "n", "v" }, "<leader>sy", ":Lookup yahoo<CR>", desc = "Yahoo" },
    { mode = { "n", "v" }, "<leader>sY", ":Lookup yandex<CR>", desc = "Yandex" },
    { mode = { "n", "v" }, "<leader>sd", ":Lookup duck_duck_go<CR>", desc = "DuckDuckGo" },
    { mode = { "n", "v" }, "<leader>sc", ":Lookup baidu<CR>", desc = "Baidu" },
    { mode = { "n", "v" }, "<leader>so", ":Lookup stack_overflow<CR>", desc = "StackOverflow" },
    { mode = { "n", "v" }, "<leader>sw", ":Lookup wikipedia<CR>", desc = "Wikipedia" },
    { mode = { "n", "v" }, "<leader>sR", ":Lookup reddit<CR>", desc = "Reddit" },
    { mode = { "n", "v" }, "<leader>sr", ":Lookup google_reddit<CR>", desc = "Google Reddit" },
  },
  config = function()
    require("lookup").setup()
  end,
}
```
## Supported `SearchEngine`
```
google
bing
yahoo
yandex
duck_duck_go
baidu
stack_overflow
wikipedia
reddit
google_reddit
```

## Commands 

### Lookup
This command will open a prompt for you to enter the search query and then open the browser with the search query.
```
:Lookup [SearchEngine]
```
Example:
```
:Lookup google
:Lookup bing
:Lookup stack_overflow
:Lookup google_reddit
```

### LookupMenu (Coming Soon)
This command will show a searchable menu for you to select the search engine and then open the browser with the search query.
```
:LookupMenu [SearchEngine]
```
Example:
```
:LookupMenu google
:LookupMenu bing
:LookupMenu stack_overflow
:LookupMenu google_reddit
```

### LookupSelected (Coming Soon)
This command will open the browser with the selected text as the search query.
```
:LookupSelected [SearchEngine]
```
Example:
```
:LookupSelected google
:LookupSelected bing
:LookupSelected stack_overflow
:LookupSelected google_reddit
```

### LookupSelectedMenu (Coming Soon)
This command will show a searchable menu for you to select the search engine and then open the browser with the selected text as the search query.
```
:LookupSelectedMenu [SearchEngine]
```
Example:
```
:LookupMenuSelected google
:LookupMenuSelected bing
:LookupMenuSelected stack_overflow
:LookupMenuSelected google_reddit
```
