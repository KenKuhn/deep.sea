#!/usr/bin/env ruby
class DeepSeaAdventure
  def initialize
    setup
  end

  def setup
    choosePlayerCount
    player_info
    gatherInfo
    displayColors
    turn_Order
    game
  end

  def game
    round
    round
    round
    game_end
  end

  def round
    setupTreasureTokens
    setupOxygenCounter
    player_turns
  end

  def game_end
  end

  def choosePlayerCount
    puts "How many people are playing?"
    @player_count = gets.chomp
      until (2..6).include? @player_count.to_i
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

  def displayColors
    @playerInfo.each do |name, color|
      puts "#{name} is the #{color} player."
      puts
    end
  end


  def turn_Order
    @turnOrder = @playerInfo.keys.shuffle
    @playerOne = @turnOrder.first
    @playerTwo = @turnOrder[1]
    @playerThree = @turnOrder[2]
    @playerFour = @turnOrder[3]
    @playerFive = @turnOrder[4]
    @playerSix = @turnOrder[5]
    @startPlayer = @playerOne
    puts "#{@startPlayer} is player one and will start the game!"
  end

  def setupTreasureTokens
    @treasureTokensLevel1 = {
      tri1: 0,
      tri2: 0,
      tri3: 1,
      tri4: 1,
      tri5: 2,
      tri6: 2,
      tri7: 3,
      tri8: 3
    }

    @treasureTokensLevel2 = {
      squ1: 4,
      squ2: 4,
      squ3: 5,
      squ4: 5,
      squ5: 6,
      squ6: 6,
      squ7: 7,
      squ8: 7
    }

    @treasureTokensLevel3 = {
      pent1: 8,
      pent2: 8,
      pent3: 9,
      pent4: 9,
      pent5: 10,
      pent6: 10,
      pent7: 11,
      pent8: 11
    }

    @treasureTokensLevel4 = {
      hex1: 12,
      hex2: 12,
      hex3: 13,
      hex4: 13,
      hex5: 14,
      hex6: 14,
      hex7: 15,
      hex8: 15
    }
    level1 = @treasureTokensLevel1.values.shuffle
    level2 = @treasureTokensLevel2.values.shuffle
    level3 = @treasureTokensLevel3.values.shuffle
    level4 = @treasureTokensLevel4.values.shuffle
    @treasureTokenPath = [level1, level2, level3, level4].flat_map(&:itself)
  end

  def setupOxygenCounter
  end

  def player_turns
  end

  def roll_dice
    a = rand(1..3)
    b = rand(1..3)
    @diceResult = a + b
    puts "You rolled a #{a} and #{b} and move #{@diceResult} spaces!"
  end

end

DeepSeaAdventure.new
