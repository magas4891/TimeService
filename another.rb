class Parent

  def initialize(time, ampm, shift)
    @time = time
    @ampm = ampm
    @shift = shift
    time_shift
  end

  def time_shift
    print @time
    puts @shift
    future_time = @time[1] + @shift
    if future_time > 60
      @time[0] += future_time / 60
      @time[1] = future_time % 60
    else
      @time[1] = future_time
    end
    puts "#{@time[0]}:#{@time[1]}"
    if @ampm == 'AM'
      if @time[0] > 12
        @ampm = 'PM'
        @time[0] %= 12
      end
    end
    if @ampm == 'PM'
      if @time[0] > 12
        @ampm = 'AM'
        @time[0] %= 12
      end
    end
    puts "#{@time[0]}:#{@time[1]} #{@ampm}"
  end

end
