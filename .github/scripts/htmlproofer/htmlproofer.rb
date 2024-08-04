#!/usr/local/bin/ruby
require "html-proofer"

options = {
  typhoeus: {
    ssl_verifypeer: false,
    ssl_verifyhost: 0,
    timeout: 120,
    connecttimeout: 60,
    cookiefile: ".cookies",
    cookiejar: ".cookies"
  },
  ignore_urls: [
    "https://www.linkedin.com/in/allisonthackston",
    /twitter.com/
  ]
}

HTMLProofer.check_directory("./_site", options).run
