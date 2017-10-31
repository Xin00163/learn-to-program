puts "What is the starting year?"
  starting_year = gets.chomp.to_i
  puts "What is the ending year?"
  ending_year = gets.chomp.to_i
  while starting_year <= ending_year
    if starting_year%400 == 0 || (starting_year%100 == 0 && starting_year%4 == 0)
    puts "Leap year is " + starting_year.to_s
    end
    starting_year += 1
  end
