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

def bubble_sort_by(bubble_array)
  (0..bubble_array.length - 2).each do |i|
    sort_it = yield(bubble_array[i], bubble_array[i + 1])
    bubble_array[i], bubble_array[i + 1] = bubble_array[i + 1], bubble_array[i] if sort_it.positive?
  end
  bubble_array
end

print bubble_sort([4, 3, 78, 2, 0, 2])
print bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
