# frozen_string_literal: true

require_relative 'game'
require_relative 'player'
require_relative 'bot'
require_relative 'human'

game = Game.new
game.play
p