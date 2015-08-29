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

def p1choice
	puts "Player1 choose x or o"
	p1choice = gets.chomp.upcase
end

def p2choice(p1choice)
	if p1choice == "X"
		 "O"
		else  "X"
	end
end

def set_players
	p1marker = p1choice
	p2marker = p2choice(p1marker)
			puts "Player1 is #{p1marker} and Player 2 is #{p2marker}"
end

set_players