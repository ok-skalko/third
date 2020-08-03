def hello_name(name)
  puts "Hello " + name
rescue TypeError
  puts "Hello friend"
end

hello_name(ARGV[0])
