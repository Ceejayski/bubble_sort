def bubble_sort(array)
  # to check the if the array length is greater than 2
  if array.size >= 2
    swap = true
    # while loop to run as long as swap is true
    while swap
      # swap is false since no swap has been made and will terminate the while loop if all has been swapped correctly
      swap = false
      # loop to iterate through each index of the array
      (array.length - 1).times do |index|
        # loop to check if element [index] is greater than the element next to it
        next unless array[index] > array[index + 1]

        array[index], array[index + 1] = array[index + 1], array[index]
        swap = true
      end
    end
    return array
  # else loop if array lenght is < 2 to print back the array
  else
    return array
  end
end

array = [4, 4, 5, 6, 7, 78, 8, 9, 80, 90, 0]

prints bubble_sort(array)
puts '----------Next bubble sort method---------'

def bubble_sort_by(array)
  if array.size >= 2
    swap = true
    while swap
      swap = false
      (array.length - 1).times do |index|
        arr_word = array[index]
        arr_word_next = array[index + 1]
        # called the yield Method as asked for as part of the prerequistes
        next unless yield(arr_word, arr_word_next).positive?

        array[index], array[index + 1] = array[index + 1], array[index]
        swap = true
      end
    end
    return array
  else
    return array
  end
end

print bubble_sort_by(%w[hi hello money monster me fatherhey]) { |left, right|
  left.length - right.length
}
