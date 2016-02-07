require_relative '../src/gf_server'
require_relative '../src/pipeline'


gf = GFServer.new

input = "Fnord!"

until input.empty?

  puts "\n"
  puts "Input: "
  input = gets.chomp

  output = process(gf,input)

  puts "\n"
  puts "Output: "
  puts output
end

gf.stop
