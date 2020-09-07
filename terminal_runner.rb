require "http"

system "clear"
puts "Choose an option:"
puts "[1] Random Fortune"
puts "[2] Lotto Numbers"
puts "[3] Visit Count"

input = gets.chomp
if input == "1"
  response = HTTP.get("http://localhost:3000/api/fortune_path").parse
  puts response["fortune"]
elsif input == "2"
  response = HTTP.get("http://localhost:3000/api/lotto_path")
  lotto_nums = response.parse
  puts lotto_nums["lotto_numbers"]
elsif input == "3"
  response = HTTP.get("http://localhost:3000/api/count_path")
  count = response.parse
  puts count["visit_count"]
end