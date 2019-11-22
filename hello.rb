friends = Hash.new
friends["John"] = "212-222-2222"
friends["Dmitry"] = "333-222-2222"
friends["Laco"] = "444-222-2222"
friends["Daco"] = "555-222-2222"
friends["Maco"] = "666-222-2222"
# friends = {
#     "John" => "212-344-5555",
#     "Dmitry" => "917-921-8358",
#     "Paco" => "123-456-7890",
#     "Maco" => "234-212-2344",
#     "Bul" => "334-888-3444"
# }
# puts friends
# puts "Whose phone number do you want"
# tmp = gets.chomp

# puts "#{tmp}'s phone is #{friends[tmp]}"
# puts "Enter new friend"
# new_name = gets.chomp
# puts "Enter phone number for #{new_name}"
# new_phone = gets.chomp
# friends[new_name] = new_phone
# puts "Here is an updated friends list"
# puts friends
friends.each do |key, value|
    puts "My friend's #{key} phone number is #{value}"
end
