# To build/run:
#   $ ruby readfile.rb

counter = 1
File.open("readfile.rb", "r").each_line do |line|
  print counter
  print ": "
  puts line
  counter = counter + 1
end
