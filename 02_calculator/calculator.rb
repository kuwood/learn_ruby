def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(a)
  sum = 0
  a.each {|x| sum = sum + x}
  return sum
end

def multiply(a)
  total = 1
  a.each {|x| total *= x}
  return total
end

def power(a,b)
  a ** b
end

def factorial(num)
  if num == 0 || num == 1
    1
  else
    (1..num).to_a.reduce do |result, i|
      result * i
    end
  end
end
