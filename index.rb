require_relative 'time_service.rb'

print 'Задайте начальное время: '
time = gets.chomp.to_s

print 'Задайте смещение: '
shift = gets.chomp.to_i

TimeService::First.new(time, shift)
