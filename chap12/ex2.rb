puts "Which year were you born in?"
year = gets.chomp.to_i
puts "Which month were you born in?"
month = gets.chomp.to_i
puts "Which day were you born?"
day = gets.chomp.to_i

birthday = Time.local(year, month, day)
time = Time.now

if time.month - month < 0
  age = time.year - year - 1
elsif tome.month == month && time.day - day < 0
  age = time.year - year - 1
else
  age = time.year - year
end

puts "You are #{age} years old! Here are some SPANKS"
age.times{puts "SPANKS"}
