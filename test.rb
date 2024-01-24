original_array = [10, 13, 16, 21, 30, 45]
differences_array = []

(1...original_array.length).each do |i|
  differences_array << original_array[i] - original_array[i - 1]
end

until differences_array.all?(0)
  new_differences_array = []

  (1...differences_array.length).each do |i|
    new_differences_array << differences_array[i] - differences_array[i - 1]
  end

  p differences_array

  differences_array = new_differences_array

end

