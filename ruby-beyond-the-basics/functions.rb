def max(x, y)
  if x > y
    x
  else
    y
  end
end

# recursive function
def first_even(list)
  return nil if list.empty?
  i = list.shift
  if i.even?
    i
  else
    first_even(list)
  end
end

even = ->(x) { x % 2 == 0 }

def first(list, fn)
  return nil if list.empty?
  i = list.shift
  if fn.call(i)
    i
  else
    first(list, fn)
  end
end

if __FILE__ == $0
  list = [1, 3, 7, 8, 10, 15, 18]
  p first_even(list)
  list = [1, 3, 7, 8, 10, 15, 18]
  p first(list, even)
end
