def binary_search(arr, target)
  min = 0
  max = arr.length - 1

  while max >= min
    guess = (min + max) / 2
    return guess if arr[guess] == target

    if arr[guess] < target
      min = guess + 1
    else
      max = guess - 1
    end
  end

  -1  
end

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];
result = binary_search(primes, 2);
puts "Found prime at index #{result}."
