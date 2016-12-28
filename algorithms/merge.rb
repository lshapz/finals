def merge_sort(array)

  if array.length <= 1
    return array
  end

  mid = array.length / 2
  sub_a = merge_sort(array[0..mid-1])
  sub_b = merge_sort(array[mid..array.length])
  array = []

  kid_a = 0
  kid_b = 0

# this would become easier by shifting the elements off, instead of having to keep two different indexes.
  while kid_a < sub_a.length && kid_b < sub_b.length
    a = sub_a[kid_a]
    be = sub_b[kid_b]
    # I'm printing the array because it makes a cool tree in the terminal
    if a <= be
      array << a
      kid_a += 1
      p array
      # I'm printing the array because it makes a cool tree in the terminal
    else
      array << be
      kid_b += 1 
      p array
      # I'm printing the array because it makes a cool tree in the terminal
    end
  end

  while kid_a < sub_a.length
    array << sub_a[kid_a]
    kid_a += 1
    p array
    # I'm printing the array because it makes a cool tree in the terminal
  end

  while kid_b < sub_b.length
    array << sub_b[kid_b]
    kid_b += 1
    p array
    # I'm printing the array because it makes a cool tree in the terminal
  end

  return array

end

 # merge_sort([4, 3, 7, 9, 0, 2, 5, 1, 6, 8])
