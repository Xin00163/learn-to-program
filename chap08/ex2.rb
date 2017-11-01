arr = ['Table of Contents', 'Chapter 1: Getting Started', 'page 1' , 'Chapter 2: Numbers', 'page 9', 'Chapter 3: Letters', 'page 13']
page_width = 50
puts arr[0].center(50)

puts " "
puts arr[1].ljust(30) + arr[2].rjust(20)
puts arr[3].ljust(30) + arr[4].rjust(20)
puts arr[5].ljust(30) + arr[6].rjust(20)
