require 'rest-client'

puts "Welcome to Bing!"
puts "Type your search: "
search = gets.chomp.split.join("+")

response = RestClient.get("http://www.bing.com/search?q=#{search}")

puts "HTTP response code is: \n#{response.code}"
puts "The hash of HTTP response headers is: \n#{response.headers}"
puts "The hash of HTTP response cookies is: \n#{response.cookies}"
puts "The response body is: \n#{response.body}"


new_search = "42+vida+universo"
response = RestClient.get("http://www.bing.com/search?q=#{new_search}")

puts "HTTP response code is: \n#{response.code}"
puts "The hash of HTTP response headers is: \n#{response.headers}"
puts "The hash of HTTP response cookies is: \n#{response.cookies}"
puts "The response body is: \n#{response.body}"
