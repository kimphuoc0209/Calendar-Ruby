# require 'date'

# def print_calendar(month, year)
#   first_day = Date.new(year, month, 1)
#   last_day = Date.new(year, month, -1)

#   puts first_day.strftime("%B %Y").center(20)
#   puts "Su Mo Tu We Th Fr Sa"

#   (first_day..last_day).each do |day|
#     print day.day.to_s.rjust(2) + " "
#     if day.saturday?
#       print "\n"
#     end
#   end
# end

# print_calendar(4, 2023)
require 'date'
def print_calendar(month, year)
days = %w[Mon Tue Wed Thu Fri Sat Sun]

blanks = Date.new(year, month, 1).wday - 1

blanks.times do
  days.push(' ')
end

days_in_month = Date.new(year, month, -1).day
day = 1

while day <= days_in_month
  days.push(day)
  day += 1
end 

unless (days.size % 7) == 0
 days.push(' ')
end 

days.join(', ')
new_arr = days.each_slice(7).to_a
for i in 0...7
 
 for j in 0...new_arr.size
  print "  #{new_arr[j][i]}"
 end
puts
end
end
print_calendar(4, 2023)