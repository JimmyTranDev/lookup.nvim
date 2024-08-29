# 🔍 lookup.nvim

Lookup anything anything on the web easily

## 📦 Installation

### Lazy

```lua
{
  "JimmyTranDev/lookup.nvim"
  keys = {
    { mode = "n", "<leader>sg", ":Lookup google<CR>", desc = "Google" },
    { mode = "n", "<leader>sb", ":Lookup bing<CR>", desc = "Bing" },
    { mode = "n", "<leader>sy", ":Lookup yahoo<CR>", desc = "Yahoo" },
    { mode = "n", "<leader>sY", ":Lookup yandex<CR>", desc = "Yandex" },
    { mode = "n", "<leader>sd", ":Lookup duck_duck_go<CR>", desc = "DuckDuckGo" },
    { mode = "n", "<leader>sc", ":Lookup baidu<CR>", desc = "Baidu" },
    { mode = "n", "<leader>so", ":Lookup stack_overflow<CR>", desc = "StackOverflow" },
    { mode = "n", "<leader>sw", ":Lookup wikipedia<CR>", desc = "Wikipedia" },
    { mode = "n", "<leader>sR", ":Lookup reddit<CR>", desc = "Reddit" },
    { mode = "n", "<leader>sr", ":Lookup google_reddit<CR>", desc = "Google Reddit" },
  },
  config = function()
    require("lookup").setup()
  end,
}
```

You can set det browser command by setting the `browser` option in the setup function if the default browser is not supported.

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
