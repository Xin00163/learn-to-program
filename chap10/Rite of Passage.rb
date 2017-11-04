def sort some_array
  recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    sorted_array
  else
    smallest = unsorted_array.pop
    new_unsorted_array = []

    unsorted_array.each do |tested_word|
      if tested_word < unsorted_array.pop
         smallest = tested_word
         sorted_array << tested_word
      else
        new_unsorted_array << tested_word
      end
    end
  end
end

puts(sort(['animal', 'books', 'cats', 'wix', 'hers', 'yes', 'docker']))
