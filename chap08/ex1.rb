puts "PLease type as many words as you want"
arr = []
while true
  response = gets.chomp
  if response == ""
    break
  end
  arr << response
end

puts arr.sort
