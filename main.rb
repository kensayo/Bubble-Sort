def bubble_sort(bubble_array = [])
  (bubble_array.length - 1).times do
    sorted = true
    (0..(bubble_array.length - 2)).each do |i|
      temp1 = bubble_array[i]
      temp2 = bubble_array[i + 1]
      next unless bubble_array[i] > bubble_array[i + 1]

      sorted = false
      bubble_array[i] = temp2
      bubble_array[i + 1] = temp1
    end
    return bubble_array if sorted == true
  end
end


arr = [4, 3, 78, 2, 0, 2]

puts "Integer Unordered Array #{arr}"

puts "Integer Ordered Array   #{bubble_sort(arr)}"

def bubble_sort_by(arr)
  (arr.size - 1).times do |i|
    if (yield arr[i], arr[i + 1]).positive?
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      bubble_sort_by(arr) { |left, right| left.length - right.length }
    end
  end
  arr
end

string_array = %w[hi hello hey]

puts "String Unordered Array  #{string_array}"

bubble_sort_by(string_array) do |left, right|
  left.length - right.length
end

puts "String Ordered Array    #{string_array}"
