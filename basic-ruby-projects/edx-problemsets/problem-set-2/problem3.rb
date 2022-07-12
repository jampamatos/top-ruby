balance = 320000
annual_int = 0.2

month_int = annual_int / 12
lower = balance / 12
upper = (balance * (1 + month_int)**12)/12
unpaid_bal = balance
epsilon = 0.01

while unpaid_bal.abs > epsilon
  update_bal = balance
  fix_pay = (upper + lower) / 2

  (1..12).each do |_i|
    unpaid_bal = update_bal - fix_pay
    update_bal = unpaid_bal + (month_int * unpaid_bal)
  end

  if update_bal > epsilon
    lower = fix_pay
  elsif update_bal < epsilon
    upper = fix_pay
  end
end

puts "Lowest Payment: #{sprintf('%.2f', fix_pay)}"