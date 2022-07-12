balance = 42
annual_interest = 0.2
monthly_pay = 0.04

min_pay = balance * monthly_pay
unpaid_bal = balance - min_pay
interest = (annual_interest / 12) * unpaid_bal

for _i in (1..12)
  new_bal = unpaid_bal + interest
  min_pay = new_bal * monthly_pay
  unpaid_bal = new_bal - min_pay
  interest = (annual_interest / 12) * unpaid_bal
end

puts "Remaining balance: #{new_bal.round(2)}"
