prices = [100, 75, 90, 80, 50]

def apply_discount(prices)
  discounted_prices = []
  prices.each do |price|
    discounted_prices << price - (price * 0.15)
  end
  discounted_prices
end

def add_tax(prices)
  prices_with_tax = []
  prices.each do |price|
    prices_with_tax << price + (price * 0.2)
  end
  prices_with_tax
end

discount = Proc.new do |price|
  price - (price * 0.15)
end

tax = Proc.new do |price|
  price + (price * 0.20)
end

def map(list, fn)
  results = []
  list.each do |item|
    results << fn.call(item)
  end
  results
end

if __FILE__ == $0
  p apply_discount(prices)
  p map(prices, discount)
  p prices.map(&discount)
  p add_tax(prices)
  p map(prices, tax)
  p prices.map(&tax)
end
