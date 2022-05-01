require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'
prompt = TTY::Prompt.new

# puts "So i can tell you if your overweight ENTER YOUR WEIGHT"
# $weight = ""
# while true
#     puts "Please enter weight you jelly belly?"
#     $weight = gets.chomp
#     $weight.empty? ? (puts "Come on tell me dont be shy") : break
# end

# $weight = $weight.to_i

# case $weight
#   when 0..18.5
#       puts "you are underweight"
#     when 18.5..24.9
#       puts "you are normal weight"
#     when 25..29.9
#       puts "you are overweight"
#     when 30..;
#       puts "you are obese"
#     else
#       puts "invalid input"
# end

  prompt = TTY::Prompt.new
  data = []
  a = prompt.ask("What did you eat today? ")
  b = prompt.ask("how many calories in 1 #{a}? ")
  c = prompt.ask("How many #{a} did you eat today? ")
  data << {"a"=>a, "b"=>b, "c"=>c}
  data.each do |row|
  puts "you ate #{row["a"]} which has #{row["b"]} and calories #{row["c"]}"
  end 
