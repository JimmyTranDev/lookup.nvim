local WebsiteName = require("enums").WebsiteName

local website_name_to_query_url = {
  [WebsiteName.GOOGLE] = "https://www.google.com/search?q=",
  [WebsiteName.BING] = "https://www.bing.com/search?q=",
  [WebsiteName.YAHOO] = "https://search.yahoo.com/search?p=",
  [WebsiteName.YANDEX] = "https://yandex.com/search/?text=",
  [WebsiteName.DUCK_DUCK_GO] = "https://duckduckgo.com/?q=",
  [WebsiteName.BAIDU] = "https://www.baidu.com/s?wd=",
  [WebsiteName.STACK_OVERFLOW] = "https://stackoverflow.com/search?q=",
  [WebsiteName.WIKIPEDIA] = "https://en.wikipedia.org/wiki/Special:Search?search=",
  [WebsiteName.REDDIT] = "https://www.reddit.com/search/?q=",
  [WebsiteName.GOOGLE_REDDIT] = "https://www.google.com/search?q=site:reddit.com ",
}

return {
  website_name_to_query_url = website_name_to_query_url,
}
