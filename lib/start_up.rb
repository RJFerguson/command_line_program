def greet
   puts "*" * 30
   puts "News time, enter a website to see the headlines from, type 'options' to see source options"

end



def get_website_from_user
  puts "Please enter a website use the full name"
  site = gets.chomp.split(" ").join("-")
  if site == "options"
    puts "bbc news, cnn, hacker news, the economist, the new york times"
    puts "*" * 30
    get_website_from_user
  end
  return site
end

def get_sort_by
  puts "Please choose an order to sort by: latest or top"
  order = gets.chomp
  return order
end


def exit_method
  puts "Would you like to view other headlines? [Yn]"
  response = gets.chomp
  if (response == "Y" || response == "y")
    view_other_headlines
  elsif response == "n"
    puts "goodbye"
  end
end

def view_other_headlines
  news_site = get_website_from_user
  order = get_sort_by
  get_website(news_site, order)
  exit_method 
end
