def shuffle arr
  shuffle = []
  while arr.length > 0
    rand_index = rand(arr.length)
    curr_index = 0
    new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        shuffle << item
      else
        new_arr << item
      end

      curr_index = curr_index + 1
    end

    arr = new_arr
  end

  shuffle
end

all_mp3s = shuffle(Dir['/Users/xinwang/Documents/Work/Interpreting/*.mp3'])
File.open 'playlist.m3u', 'w' do |f|
  all_mp3s.each do |mp3|
    f.write mp3+"\n"
  end
end
puts 'Done!'
