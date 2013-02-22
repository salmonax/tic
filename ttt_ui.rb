require './lib/board'
require './lib/player'

board = Board.new
players = [Player.new("Player 1"),Player.new("Player 2")]

puts "Welcome to Tic Tac Toe!"
puts "Here is the board."
puts board
puts "Player 1, you are X's and you go first."

def get_mark_input(board)
  puts  "What row would you like?"
  row = gets.chomp.to_i
  puts "Great! Now what column would you like?"
  column = gets.chomp.to_i
  unless board.mark(row, column)
    puts "Can't do that, try again"
    get_mark_input(board)
  end
end

players.each do |player| 
  puts "#{player.name}, your turn!" 
  get_mark_input(board)
end




# def mark
#   begin
#     board.mark(gets.chomp)
#   rescue
#     puts "That spot is already marked!"
#     puts "Choose another spot."
#     mark
#   end