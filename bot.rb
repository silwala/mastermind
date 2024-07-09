# frozen_string_literal: true

# class that creates a bot player(code maker)
class Bot < Player
  NAMES = %w[Bot-John Bot-Tommy Bot-Timothy Bot-Charlie Bot-Hannah Bot-Lukas].freeze
  attr_reader :name, :colors

  def initialize(colors)
    super(random_name, four_colors(colors))
  end

  def random_name
    NAMES.sample
  end

  def four_colors(colors)
    colors.sample(4)
  end
end
