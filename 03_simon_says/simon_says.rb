
def echo(string)
    return string.to_s
end

def shout(string)
  return string.upcase
end

def repeat(string, num=2)
  repeated = (string + " ") * num
  return repeated[0..-2]
end

def start_of_word(string, num)
  return string[0...num]
end

def first_word(string)
  string.split(" ").first
end

def titleize(string)
  a = string.split(" ")
  a.map! do |x|
    if x == 'the' || x == 'over' || x == 'and'
      x
    else
      x.capitalize
    end
  end
  a.first.capitalize!
  return a.join(" ")
end
