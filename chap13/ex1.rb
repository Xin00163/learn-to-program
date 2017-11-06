class Arr
  def shuffle
    arr = self
    shuffle = []
    while arr.length > 0 # arr.length == 0
      rand_index = rand(arr.length) # 0

      curr_index = 0
      new_arr = []

      arr.each do |item|
        if curr_index == rand_index # 0 == 0
          shuffle << item # [3,1,2]
        else
          new_arr << item
        end

        curr_index = curr_index + 1 # 1
      end
    end
    arr = new_arr # []
  end
end

class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
  roman = ''
  roman = roman + 'M' * (self / 1000)
  roman = roman + 'D' * (self % 1000 / 500)
  roman = roman + 'C' * (self % 500 / 100)
  roman = roman + 'L' * (self % 100 / 50)
  roman = roman + 'X' * (self % 50 / 10)
  roman = roman + 'V' * (self % 10 / 5)
  roman = roman + 'I' * (self % 5 / 1)
  roman
  end
end

puts [1,2,3,4,5,6,7,8,9,0].shuffle
puts 6.factorial
puts 389.to_roman
