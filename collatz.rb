def collatz(num)
  if num == 1
    0
  elsif num.odd?
    1 + collatz((3 * num) + 1)
  else
    1 + collatz(num / 2)
  end
end

p collatz(1)
p collatz(2)
p collatz(3)
p collatz(4)
p collatz(5)
p collatz(6)
p collatz(7)
p collatz(27)