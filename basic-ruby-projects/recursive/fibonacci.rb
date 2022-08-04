def fibs(num)
  result = [] if num == 0
  result = [0] if num == 1
  result = [0, 1] if num > 1

  (2...num).each do
    fibn = result[-1] + result[-2]
    result << fibn
  end

  result
end

def fibs_rec(num)
  return [] if num == 0
  return [0] if num == 1
  return [0, 1] if num == 2

  seq = fibs_rec(num - 1)
  seq << seq[-2] + seq[-1]
end

p fibs(10)
p fibs_rec(10)
