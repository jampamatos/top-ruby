require 'pry-byebug'
require 'bigdecimal'

DENOM = {
  PENNY: 0.01,
  NICKEL: 0.05,
  DIME: 0.10,
  QUARTER: 0.25,
  ONE: 1.00,
  FIVE: 5.00,
  TEN: 10.00,
  TWENTY: 20.00,
  ONE_HUNDRED: 100.00
}.freeze

def sum_cid(cid)
  cid.map { |_denom, value| value }.reduce { |sum, value| sum + value }.round(2)
end

def check_change(cid, change)
  change_arr = []
  cid = cid.reverse
  cid.each do |el|
    temp = [el[0], 0]
    while change >= DENOM[el[0].to_sym] && el[1].positive?
      temp[1] += DENOM[el[0].to_sym]
      el[1] -= DENOM[el[0].to_sym]
      change -= DENOM[el[0].to_sym]
    end
    change_arr << temp if temp[1].positive?
  end
  [change, change_arr]
end

def check_cash_register(price, cash, cid)
  change = cash - price
  total_cid = sum_cid(cid)
  if change > total_cid
    { status: 'INSUFFICIENT_FUNDS', change: change_arr }
  elsif change == total_cid
    { status: 'CLOSED', change: cid }
  else
    change, change_arr = check_change(cid, change)
    change.round(2).positive? ? { status: 'INSUFFICIENT_FUNDS', change: [] } : { status: 'OPEN', change: change_arr}
  end
end

#p check_cash_register(19.5, 20, [['PENNY', 1.01], ['NICKEL', 2.05], ['DIME', 3.1], ['QUARTER', 4.25], ['ONE', 90], ['FIVE', 55], ['TEN', 20], ['TWENTY', 60], ['ONE_HUNDRED', 100]])
# {status: 'OPEN', change: [['QUARTER', 0.5]]}
#p ''
p check_cash_register(3.26, 100, [['PENNY', 1.01], ['NICKEL', 2.05], ['DIME', 3.1], ['QUARTER', 4.25], ['ONE', 90], ['FIVE', 55], ['TEN', 20], ['TWENTY', 60], ['ONE_HUNDRED', 100]])
# {status: 'OPEN', change: [['TWENTY', 60], ['TEN', 20], ['FIVE', 15], ['ONE', 1], ['QUARTER', 0.5], ['DIME', 0.2], ['PENNY', 0.04]]}
#p ''
#p check_cash_register(19.5, 20, [['PENNY', 0.01], ['NICKEL', 0], ['DIME', 0], ['QUARTER', 0], ['ONE', 1], ['FIVE', 0], ['TEN', 0], ['TWENTY', 0], ['ONE_HUNDRED', 0]])
# {status: 'INSUFFICIENT_FUNDS', change: []}
#p ''
#p check_cash_register(19.5, 20, [['PENNY', 0.5], ['NICKEL', 0], ['DIME', 0], ['QUARTER', 0], ['ONE', 0], ['FIVE', 0], ['TEN', 0], ['TWENTY', 0], ['ONE_HUNDRED', 0]])
# {status: 'CLOSED', change: [['PENNY', 0.5], ['NICKEL', 0], ['DIME', 0], ['QUARTER', 0], ['ONE', 0], ['FIVE', 0], ['TEN', 0], ['TWENTY', 0], ['ONE_HUNDRED', 0]]}