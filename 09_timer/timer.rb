class Timer
  attr_reader :seconds

  def initialize
    @seconds = 0
  end

  def seconds=(num)
    @seconds = num
  end

  def time_string
    h,m = 0,0

    while @seconds>60
      m+=1
      @seconds-=60
    end

    while m>60
      h+=1
      m-=60
    end
    #print an integer (d) taking up at least 2 characters (2) and left-padding with zeros instead of spaces(0)
    "%02d:%02d:%02d" % [h,m,@seconds]
  end

end
