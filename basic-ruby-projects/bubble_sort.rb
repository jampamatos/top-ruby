def bubble_sort!(arr)
  # destructive
  n = arr.length

  until n <=1
    new_n = 0
    for i in (1...n)
      if arr[i-1] > arr[i]
        arr[i-1], arr[i] = arr[i], arr[i-1]
        new_n = i
      end
    end
    n = new_n
  end
  arr
end

def bubble_sort(arr)
  # non-destructive
  ret_arr = arr.map(&:clone)
  bubble_sort!(ret_arr)
end

arr = [4,3,78,2,0,2]
p bubble_sort(arr)
p arr
p bubble_sort!(arr)
p arr