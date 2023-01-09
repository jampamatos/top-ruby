# frozen_string_literal: true

def merge(left, right)
  result = []
  i = 0
  j = 0

  while i < left.length && j < right.length
    if left[i] < right[j]
      result << left[i]
      i += 1
    else
      result << right[j]
      j += 1
    end
  end

  while i < left.length
    result << left[i]
    i += 1
  end

  while j < right.length
    result << right[j]
    j += 1
  end
  result
end

def merge_sort(arr)
  if arr.length < 2
    arr
  else
    middle = arr.length / 2
    left = merge_sort(arr[0...middle])
    right = merge_sort(arr[middle..])
    merge(left, right)
  end
end

a = [8, 4, 7, 5, 3, 9, 6, 1, 2]
b = []
rand(20).times { b << rand(20) }
c = []
rand(15).times { c << rand(15) }

p a
p merge_sort(a)

p b
p merge_sort(b)

p c
p merge_sort(c)
