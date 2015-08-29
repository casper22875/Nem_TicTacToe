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





def set_players
	puts "Player1 choose x or o"
	p1choice = gets.chomp.upcase
	puts "Player 1 has chosen #{p1choice}"
		if p1choice == "X"
		p2choice = "O"
		else p2choice = "X"
		end
		puts "Player1 is #{p1choice} and Player 2 is #{p2choice}"
	end

set_players