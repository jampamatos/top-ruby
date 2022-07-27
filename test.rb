@transactions = [10, -15, 25, 30, -24, -70, 999]

def transaction_statement
  formatted_transactions = []
  @transactions.each do |transaction|
    formatted_transactions << yield(transaction) # We've put () around transaction just for clarity here but they aren't required.
  end

  p formatted_transactions
end

transaction_statement do |transaction|
  "%0.2f" % transaction
end
#=> ["10.00", "-15.00", "25.00", "30.00", "-24.00", "-70.00", "999.00"]