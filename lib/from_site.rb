require 'rest-client'
require 'json'
require 'pry'


def get_website(news_site, order)
  check = Hash.new(0)
  if (news_site == "the-new-york-times" || news_site == "bbc-news" || news_site == "cnn")
    order = "top"
  end
  web_info = RestClient.get("https://newsapi.org/v1/articles?source=#{news_site}&sortBy=#{order}&apiKey=f5a2515a3a5c4347ab1044ecc2c0cc50")
  final = JSON.parse(web_info)
  final["articles"].each_with_index do |article, index|
    puts "#{index+1}. #{article["title"]}"
    check[(index+1)] = article["url"]
  end

  html_stuff = RestClient.get(check[2])
  puts html_stuff

end
