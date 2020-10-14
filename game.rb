class DeepSeaAdventure
  def initialize
    setup
  end

  def setup
    choosePlayerCount
    playerName
    pickColor
    startingPlayer
  end

  def choosePlayerCount
    puts "How many people are playing?"
    @player_count = gets.chomp
      if @player_count.to_i != 2..6
        puts "Please choose a number between 2-6."
        input2 = gets.chomp
        @player_count = input2
      end
  end

  def playerName
    puts "Please enter the name of one of the #{@player_count} unnamed players!"
    @input3 = gets.chomp
    @input3 = [] #issue is here not filling array like I thought. Issue.
    @player_count = @player_count.to_i - 1
    unless @player_count == 0
      playerName
    end
  end

  def pickColor
    #@input3.each do |name|
      #need to play around with this. Not working yet.
    #  puts "#{name} what color would you like to be?"
    #  colorChoice = gets.chomp
  #  end
  puts "#{@input3}"
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
