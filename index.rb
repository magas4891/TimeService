require_relative 'time_service.rb'

print 'Задайте начальное время: '
time = gets.chomp.to_s

print 'Задайте смещение: '
shift = gets.chomp.to_i

time1 = time.split(' ')
time2 = time1[0].split(':').map(&:to_i)


TimeService::Inherit.new(time2, time1[1], shift)
