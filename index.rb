require_relative 'time_service.rb'

time_validator = /^(0?[1-9]|1[012])(:[0-5]\d) [APap][mM]$/
time = ''

loop do
  print 'Задайте начальное время: '
  time = gets.chomp.to_s
  unless time_validator.match?(time)
    puts "Введите время в формате '10:20 PM'!"
  end
  break if time_validator.match?(time)
end

print 'Задайте смещение: '
add_minutes = gets.chomp.to_i

TimeService::Second.new(time, add_minutes)
