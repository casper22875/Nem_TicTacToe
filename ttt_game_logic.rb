class TicTacToe

attr_accessor :board,:player1,:player2,:current,:gametype

def initialize(board,player1,player2,current,gametype)
	@board = board_positions_array
	@player1 = ""
	@player2 = ""
	@current = 1
	@gametype = gametype
end

def board_select_random(board)
		array = rand(1..9)
		if valid_square?(array,board) == false
		   board_select_random(board)
		else
		   player_marker = change_player()
		   board[array - 1] = player_marker
    end
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



def winning_board
	if win(board) == true
	end
end




def change_player
	if current == 1
		player1
	else
		player2
	end
end

def valid_square?(choice, gameboard)
		choice >= 1 && choice <= 9 && gameboard[choice - 1] != "X" && gameboard[choice - 1] != "O"	 
	end

def switch_players 
	if current == 1
	   current = 2
	else 
	   current = 1
	end
end

def board_full?(squares)
	board = squares.join(",")
	if board =~ (/\d/)
	false
	else
	true
	end
end

def win(board)
	if board[0] == "X" && board[1] == "X" && board[2] == "X" ||
	   board[3] == "X" && board[4] == "X" && board[5] == "X" ||
	   board[6] == "X" && board[7] == "X" && board[8] == "X" ||
	   board[0] == "X" && board[3] == "X" && board[6] == "X" ||
	   board[1] == "X" && board[4] == "X" && board[7] == "X" ||
	   board[2] == "X" && board[5] == "X" && board[8] == "X" ||
	   board[0] == "X" && board[4] == "X" && board[8] == "X" ||
	   board[2] == "X" && board[4] == "X" && board[6] == "X" ||
	   board[0] == "O" && board[1] == "O" && board[2] == "O" ||
	   board[3] == "O" && board[4] == "O" && board[5] == "O" ||
	   board[6] == "O" && board[7] == "O" && board[8] == "O" ||
	   board[0] == "O" && board[3] == "O" && board[6] == "O" ||
	   board[1] == "O" && board[4] == "O" && board[7] == "O" ||
	   board[2] == "O" && board[5] == "O" && board[8] == "O" ||
	   board[0] == "O" && board[4] == "O" && board[8] == "O" ||
	   board[2] == "O" && board[4] == "O" && board[6] == "O"
	   true
	   else
	   false
	end
end	
	

end




 



=begin
winning_moves =
[[1,2,3],
[4,5,6],
[7,8,9],
[1,4,7],
[2,5,8],
[3,6,9],
[1,5,9],
[3,5,7]]
=end