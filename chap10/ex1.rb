def shuffle arr # [1,2,3]
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

    arr = new_arr # []
  end

  shuffle # [3,1,2]
end
puts(shuffle([1,2,3,4,5,6,7,8,9]))
