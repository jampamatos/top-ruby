def stock_picker(stocks)
  min_price = stocks[0]
  min_day = 0
  profit = 0
  days = [0, 0]

  stocks.each.with_index do |price, day|
    if price < min_price
      min_price = price
      min_day = day
    end

    if price - min_price > profit 
      profit = price - min_price
      days = [min_day, day]
    end
  end

  days
end

p stock_picker([1,15,6,9,17,8,6,3,10])
# buy 1 (i:0), sell 17 (i:4), 16 profit

p stock_picker([15,3,6,9,8,17,6,1,10])
# buy 3 (i:1), sell 17 (i:5), 14 profit

p stock_picker([17,3,6,9,15,8,6,1,10])
# buy 3 (i:1), sell 15 (i:4), 12 profit

p stock_picker([17,3,6,9,15,8,6,10,1])
# buy 3 (i:1), sell 15 (i:4), 12 profit

p stock_picker([17,15,10,9,8,6,3,1])
# no profit

p stock_picker([1,3,6,8,9,10,15,17])
# buy 1 (i:0), sell 17 (i:7), profit 16