class Book
  attr_reader :title

  def title=(string)
    lower_case = ['the','a','an','and','in','of']
    a = string.split(" ")
    new_a = []

    a.each_index do |word|
      if word == 0
        puts "#{a[0]} has index 0"
        new_a << a[word].capitalize
      elsif lower_case.include?(a[word])
        new_a << a[word]
      elsif word == 'i'
        new_a << a[word].capitalize
      else
        new_a << a[word].capitalize
        puts "shifted #{word}"
      end
    end

    @title = new_a.join(" ")
  end
end
