balance = 4773
annualInterestRate = 0.2

fixed_month_pay = 0
unpaid_bal = balance
month_interest = annualInterestRate / 12

while unpaid_bal > 0

  update_bal = balance
  fixed_month_pay += 10

  (1..12).each do |_i|
    unpaid_bal = update_bal - fixed_month_pay
    update_bal = unpaid_bal + (month_interest * unpaid_bal)
  end
  
end

puts "Lowest payment: #{fixed_month_pay}"