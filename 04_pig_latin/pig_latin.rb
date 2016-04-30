def translate(string)
  a = string.split(" ")
  a.map! do |word|
    if %w(a e i o u).include?(word[0])
      word += "ay"
    elsif word[0..2] =~ /^[^aeiou]{3}/ || (word[0] =~ /^[^aeiou]/ && word[1..2] == 'qu')
      word = word[3..-1] + word[0..2] + 'ay'
    elsif word[0..1] =~ /^[^aeiou]{2}/ || word[0..1] == 'qu'
      word = word[2..-1] + word[0..1] + 'ay'
    else
      word = word[1..-1] + word[0] + 'ay'
    end
  end
  return a.join(" ")
end
