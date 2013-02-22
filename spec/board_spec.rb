require '../lib/board'

board = Board.new
puts "#{board.class} should be Board"

puts board 
puts "...should be a visual representation of the board."

puts "**********************************************"
puts "TESTING THE MARK"
board.mark(2,2)
puts board
puts "...should have an X in the middle."

board.mark(1,1)
puts board
puts "...should have an o in the upper left."

board.mark(1,1)
puts board
puts "...should make no change."

puts "**********************************************"
puts "TESTING next play"

puts "#{board.has_column?} should be false"

board.mark(1,2)
board.mark(3,3)
board.mark(3,2)

puts board

puts "#{board.has_column?} should be true"