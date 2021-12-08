require_relative 'game'
require_relative 'box'
require_relative 'die'

NUM_T = 9
N_DICE = 2
N_SIDES = 6

tiles = []
NUM_T.times do |i|
  @tiles << i + 1
end

dice = (1..N_DICE).map { |i| Die.new(N_SIDES) }
box = Box.new(tiles)

game = Game.new(box, dice)

puts Game::WELCOME_MESSAGE
game.start!
game.play until game.over?

puts game.results

