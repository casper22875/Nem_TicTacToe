# print "Current Board"
# print visualization of board

def board_status(message, board_array)

#board_positions_array[0] = "X"
puts message
puts """
  |  |
#{board_array[0]} | #{board_array[1]}| #{board_array[2]}
__|__|__   
  |  |  
#{board_array[3]} | #{board_array[4]}| #{board_array[5]}
__|__|__
#{board_array[6]} | #{board_array[7]}| #{board_array[8]}
  |  |"""
end

board_positions_array = [ "0","1","2","3","4","5","6","7","8"]
current_board = Array.new(9, " ")

board_status("Shall we play a game?", board_positions_array)
board_status("The current board is:", current_board)

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
	@p1marker = p1choice
	@p2marker = p2choice(@p1marker)
			puts "Player1 is #{@p1marker} and Player 2 is #{@p2marker}"
end

set_players

def p1_square_loop
puts "Player1(#{@p1marker}) which square do you want?"
@sqchoicep1 = gets.to_i
end

p1_square_loop

current_board[@sqchoicep1] = "#{@p1marker}"
board_status("Player1 (#{@p1marker}) chose space #{@sqchoicep1}", current_board)

def p2_square_loop
puts "Player2 (#{@p2marker})which square do you want?"
@sqchoicep2 = gets.to_i
end

p2_square_loop

