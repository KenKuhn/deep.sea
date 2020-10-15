class DeepSeaAdventure
  def initialize
    setup
  end

  def setup
    choosePlayerCount
    player_info
    gatherInfo
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


  def player_info
    @playerInfo = {}
    def gatherInfo
      puts "Please enter the name of one of the #{@player_count} unnamed players!"
      name = gets.chomp
      puts "Please choose a color for #{name}."
      color = gets.chomp
      @playerInfo.store(name, color)
      @player_count = @player_count.to_i - 1
      unless @player_count == 0
        gatherInfo
      end
    end
  end



  def startingPlayer
    @playerInfo.each do |name, color|
      puts "#{name} is the #{color} player."
    end
#@playerInfo.select(1) do |name| #Pulling data from hash needs investigation
    #  puts "#{name} is player one and will start the game!"
  #  end
  end


  def roll_dice
    a = rand(1..3)
    b = rand(1..3)
    x = a + b
    puts "You rolled a #{a} and #{b} and move #{x} spaces!"
  end

end

DeepSeaAdventure.new
