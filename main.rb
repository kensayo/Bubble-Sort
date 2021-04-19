def bubble_sort(arr)
  puts "arr= #{arr}"
  for i in (0..arr.length - 2)
      if arr[i]>arr[i + 1]
          str = arr[i]
          arr[i] = arr[i + 1]
          arr[i + 1] = str
          arr = bubble_sort(arr)
      end
  end
  arr
end

arr = [4, 3, 78, 2, 0, 2]

puts "Integer Unordered Array #{arr}"
puts "Integer Ordered Array   #{bubble_sort(arr)}"