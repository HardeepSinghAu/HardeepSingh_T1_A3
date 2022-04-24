puts "So i can tell you if your overweight ENTER YOUR WEIGHT"
$weight = ""
while true
    puts "Please enter weight you jelly belly?"
    $weight = gets.chomp
    $weight.empty? ? (puts "Come on tell me dont be shy") : break
end

$weight = $weight.to_i

case $weight
  when 0..18.5
      puts "you are underweight"
    when 18.5..24.9
      puts "you are normal weight"
    when 25..29.9
      puts "you are overweight"
    when 30..;
      puts "you are obese"
    else
      puts "invalid input"
end