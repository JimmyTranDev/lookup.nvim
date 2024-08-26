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

return {
  Browser = Browser,
  OS = OS,
  SearchEngineUrl = SearchEngineUrl,
}
