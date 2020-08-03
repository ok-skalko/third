def angle(hour, minute)
  a = hour.to_i
  b = minute.to_i
  c = (a * 30 + b * 0.5) - (b * 6)
  puts c.abs
end

angle(ARGV[0], ARGV[1])
