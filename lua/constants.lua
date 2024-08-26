local Browser = {
  FIREFOX = "firefox",
  CHROME = "google-chrome",
  BRAVE = "brave",
  AUTO = "defaul",
}

local OS = {
  LINUX = "linux",
  MAC = "mac",
  WINDOWS = "windows"
}

local SearchEngineUrl = {
  google = "https://www.google.com/search?q=",
  bing = "https://www.bing.com/search?q=",
  yahoo = "https://search.yahoo.com/search?p=",
  yandex = "https://yandex.com/search/?text=",
  duck_duck_go = "https://duckduckgo.com/?q=",
  baidu = "https://www.baidu.com/s?wd=",
  stack_overflow = "https://stackoverflow.com/search?q=",
  wikipedia = "https://en.wikipedia.org/wiki/Special:Search?search=",
  reddit = "https://www.reddit.com/search/?q=",
  google_reddit = "https://www.google.com/search?q=site:reddit.com ",
}

local lookup_input_table = {
  { command_name = "LookupInputGoogle",        search_engine_url = SearchEngineUrl.google },
  { command_name = "LookupInputBing",          search_engine_url = SearchEngineUrl.bing },
  { command_name = "LookupInputYahoo",         search_engine_url = SearchEngineUrl.yahoo },
  { command_name = "LookupInputYandex",        search_engine_url = SearchEngineUrl.yandex },
  { command_name = "LookupInputDuckDuckGo",    search_engine_url = SearchEngineUrl.duck_duck_go },
  { command_name = "LookupInputBaidu",         search_engine_url = SearchEngineUrl.baidu },
  { command_name = "LookupInputStackOverflow", search_engine_url = SearchEngineUrl.stack_overflow },
  { command_name = "LookupInputWikipedia",     search_engine_url = SearchEngineUrl.wikipedia }
}

return {
  Browser = Browser,
  OS = OS,
  SearchEngineUrl = SearchEngineUrl,
  lookup_input_table = lookup_input_table
}
