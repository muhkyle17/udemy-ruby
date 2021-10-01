dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(dial_book)
  dial_book.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end
 
# Execution flow
loop do
  puts "Do you want to look up an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase

  if answer == "n" || answer != "y"
    break
  elsif answer == "y"
    puts "Which city do you want the area code for?"
    puts get_city_names(dial_book)
    puts "Enter your selection: "
    city = gets.chomp.downcase
    if dial_book.include?(city) 
      puts "The area code of #{city} is #{get_area_code(dial_book, city)}"
    else
      puts "That city is not part of the list" 
    end
  end
end