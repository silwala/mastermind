# frozen_string_literal: true

# class to instantiate the actual game itself
class Game
  COLOR_OPTIONS = %w[RED GREEN YELLOW BLUE BROWN ORANGE WHITE BLACK].freeze

  def initialize
    @bot_player = create_bot
  end

  def create_bot
    Bot.new(COLOR_OPTIONS)
  end

  def bot_name
    @bot_player.name
  end

  def bot_colors
    @bot_player.colors
  end
end
