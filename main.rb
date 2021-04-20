def bubble_sort(arr)
  (arr.size - 1).times do |i|
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      arr = bubble_sort(arr)
    end
  end
  arr
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
