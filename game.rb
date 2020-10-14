class DeepSeaAdventure
  def initialize
    setup
  end

  def setup
    choosePlayerCount
    pickColor
    startingPlayer
  end

  def choosePlayerCount
    puts "How many people are playing?"
    @input1 = gets.chomp
      if @input1.to_i != 2..6
        puts "Please choose a number between 2-6."
        input2 = gets.chomp
        @input1 = input2
      end
  end

  def pickColor
    puts "Please enter the name of 1 of the #{@input1} players!"
  end

  def startingPlayer
  end


  def roll_dice
    a = rand(1..3)
    b = rand(1..3)
    x = a + b
    puts "You rolled a #{a} and #{b} and move #{x} spaces!"
  end

end

DeepSeaAdventure.new
