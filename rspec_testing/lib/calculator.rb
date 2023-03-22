# frozen_string_literal: true

class Calculator
  def add(*args)
    args.sum
  end

  def subtract(*args)
    args.inject(:-)
  end
end
