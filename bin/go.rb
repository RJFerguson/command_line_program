#!/usr/bin/env ruby

require_relative "../lib/from_site.rb"
require_relative "../lib/start_up.rb"


greet
news_site = get_website_from_user
order = get_sort_by
get_website(news_site, order)
exit_method
