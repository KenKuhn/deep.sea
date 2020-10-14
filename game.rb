def roll_dice
  a = rand(1..3)
  b = rand(1..3)
  x = a + b
  puts "You rolled a #{a} and #{b} and move #{x} spaces!"
end

puts roll_dice
