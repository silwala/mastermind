# frozen_string_literal: true

# class to instantiate the actual game itself
class Game
  COLOR_OPTIONS = %w[RED GREEN YELLOW BLUE BROWN ORANGE WHITE BLACK].freeze

  def initialize
    @bot_player = create_bot
    @human_player = create_human
  end

  def play
    puts "#{@human_player.name}(codebreaker) vs #{@bot_player.name}(codemaker)"
    play_rounds

  end

  private

  def create_bot
    Bot.new(COLOR_OPTIONS)
  end

  def create_human
    name = set_human_name
    Human.new(name)
  end

  def set_human_name
    print 'Enter your name: '
    gets.chomp
  end

  def play_rounds
    guesses = 0
    human_guess = guess_colors
    until guesses == 12 || winner?(human_guess)
      guesses += 1
      human_guess = guess_colors
    end
  end

  def choose_colors
    print "pick four colors from [#{COLOR_OPTIONS.join(' ')}]: "
    gets.chomp.split(' ')
  end

  def guess_colors
    human_guess = choose_colors
    until check_valid(human_guess)
      puts 'Invalid number of colors or invalid color values'
      human_guess = choose_colors
    end
    human_guess
  end

  def check_valid(human_guess)
    human_guess.all? { |color| COLOR_OPTIONS.include?(color) } && human_guess.length == 4
  end

  def winner?(human_guess)
    human_guess.all? { |color| @bot_player.colors.include?(color) }
  end
end
