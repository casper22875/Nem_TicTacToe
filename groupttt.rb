
def arena(arena_message)
puts arena_message
puts """ __|__|__
 __|__|__
   |  |  """
end

arena("Welcome to Tic Tac Toe")
arena("This is the current board")

def player1_marker
	puts "Player 1 please choose X or O."
	gets.chomp.upcase
end

player1 = player1_marker

puts "Player 1 has chosen #{player1}."

def player2_marker(marker1)
if marker1 == "X"
then "O"
else "X"
end
end

player2 = player2_marker(player1)
puts "player 2 is #{player2}"

