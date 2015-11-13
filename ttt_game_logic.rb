class TicTacToe

attr_accessor :board, :player1, :player2, :current

def initialize
	@board = board_positions_array
	@player1 = ""
	@player2 = ""
	@current = @player1
end


def board_positions_array
	["1", "2", "3", "4", "5", "6", "7", "8", "9"]
end

def valid_marker?(marker)
	marker == "X" || marker=="O"
end


def p2_marker(player1)
	 if player1 == "X" 
	 p2_marker = "O"
	 else
	 p2_marker = "X"
	 end	 
end	




 
end