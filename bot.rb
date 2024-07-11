# frozen_string_literal: true

# class that creates a bot player(code maker)
class Bot < Player
  NAMES = %w[Bot-John Bot-Tommy Bot-Timothy Bot-Charlie Bot-Hannah Bot-Lukas].freeze
  attr_reader :colors

  def initialize(colors)
    @colors = four_colors(colors)
    super(random_name)
    puts @colors
  end

  def random_name
    NAMES.sample
  end

  def four_colors(colors)
    colors.sample(4)
  end
end
