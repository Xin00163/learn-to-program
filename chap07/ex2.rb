puts "Grandma: What are you saying?"
bye_count = 0
while true
answer = gets.chomp
  if answer == "BYE"
    bye_count += 1
    if bye_count == 3
      puts "Grandma: BYE"
      break
    end

  else
    bye_count = 0
  end

  if answer != "BYE"
    if answer == answer.upcase
    puts "Grandma: NO, NOT SINCE " + (1930 +rand(1950 - 1930)).to_s + "!"
    else
    puts "Grandma: HUH?!  SPEAK UP, SONNY!"
    end
  end
end
