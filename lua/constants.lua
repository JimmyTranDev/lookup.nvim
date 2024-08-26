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
  GOOGLE = "https://www.google.com/search?q=",
  BING = "https://www.bing.com/search?q=",
  YAHOO = "https://search.yahoo.com/search?p=",
  YANDEX = "https://yandex.com/search/?text=",
  DUCK_DUCK_GO = "https://duckduckgo.com/?q=",
  BAIDU = "https://www.baidu.com/s?wd=",
  STACK_OVERFLOW = "https://stackoverflow.com/search?q=",
  WIKIPEDIA = "https://en.wikipedia.org/wiki/Special:Search?search=",
  REDDIT = "https://www.reddit.com/search/?q=",
}


local lookup_input_table = {
  { command_name = "LookupInputGoogle",        search_engine_url = SearchEngineUrl.GOOGLE },
  { command_name = "LookupInputBing",          search_engine_url = SearchEngineUrl.BING },
  { command_name = "LookupInputYahoo",         search_engine_url = SearchEngineUrl.YAHOO },
  { command_name = "LookupInputYandex",        search_engine_url = SearchEngineUrl.YANDEX },
  { command_name = "LookupInputDuckDuckGo",    search_engine_url = SearchEngineUrl.DUCK_DUCK_GO },
  { command_name = "LookupInputBaidu",         search_engine_url = SearchEngineUrl.BAIDU },
  { command_name = "LookupInputStackOverflow", search_engine_url = SearchEngineUrl.STACK_OVERFLOW },
  { command_name = "LookupInputWikipedia",     search_engine_url = SearchEngineUrl.WIKIPEDIA }
}

return {
  Browser = Browser,
  OS = OS,
  SearchEngineUrl = SearchEngineUrl,
  lookup_input_table = lookup_input_table
}
