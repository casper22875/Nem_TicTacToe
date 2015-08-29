# print "Current Board"
# print visualization of board

def board_status(message)

puts message
puts """
  |  |
 1| 2| 3
__|__|__   
  |  |  
 4| 5| 6
__|__|__
 7| 8| 9
  |  |"""
end

board_status("Shall we play a game?")
board_status("The current board is")