module TimeService

  class Second

    def initialize(time, add_minutes)
      @time = time.split(' ')
      @time_hour = @time[0].split(':').map(&:to_i)
      @time_ampm = @time[1].upcase
      @add_minutes = add_minutes
      time_shift
    end

    def time_shift
      future_time = @time_hour[1] + @add_minutes
      if future_time > 59
        @time_hour[0] += future_time / 60
        @time_hour[1] = future_time % 60
      else
        @time_hour[1] = future_time
      end
      @time_ampm, @time_hour[0] = 'PM', @time_hour[0] % 12 if @time_hour[0] >= 12 if @time_ampm == 'AM'
      @time_ampm, @time_hour[0] = 'AM', @time_hour[0] % 12 if @time_hour[0] >= 12 if @time_ampm == 'PM'
      puts "#{@time_hour[0]}:#{@time_hour[1]} #{@time_ampm}"
    end
  end

  class First < Second
  end

end
