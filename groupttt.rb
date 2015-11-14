class Game

def start_game
	boardarray=[*(0..8)]
	currentboard=Array.new(9," ")
	arena("Welcome to Tic Tac Toe", boardarray)
	player_markers
	valid_marker?(@player1_marker)
	square_choices1
	square_choices2
end
	
	
def board_arrays
	boardarray=[*(0..8)]	
	# print boardarray
	currentboard=Array.new(9," ")
end

def arena(arena_message,boardarray)
	puts arena_message
	puts """_#{boardarray[0]}_|_#{boardarray[1]}_|_#{boardarray[2]}_
 _#{boardarray[3]}_|_#{boardarray[4]}_|_#{boardarray[5]}_
  #{boardarray[6]} | #{boardarray[7]} | #{boardarray[8
 ]} """
end

def board_messages
	arena("Welcome to Tic Tac Toe",boardarray)
	arena("This is the current board",currentboard)
end

def player_markers
	@player1 = player1_marker
	@player2 = player2_marker(@player1)
	puts "Player 1 is #{@player1} and player 2 is #{@player2}"
end

def valid_marker?(marker_choice) 
	if marker_choice == "X" || marker_choice == "O"
	true
	else 
	false
	end
end

def player1_marker
	puts "Player 1 please choose X or O."
	gets.chomp.upcase
end
 

def player2_marker(marker1)
	if marker1 == "X"
	then "O"
	else "X"
	end
end

def 




def open_square(square,board)
	square >= 0 && square <= 9 && board[square] == " "
end

def repeater_loop
	
	
	puts "Player 1 please choose a square between 0-8"
	sqchoice = gets.to_i
	currentboard[sqchoice] = "#{@player1}"
	puts "Player 1 has chosen #{sqchoice}"
	
	
	# puts "Player 2 , please choose a square between 0-8"
	# board_arrays[sqchoice] = "#{@player1}"
	# puts arena("This is the current board",board_arrays)
end

def square_choices2
	puts "Player 2 , please choose a square between 0-8"
	sqchoice2 = gets.to_i
	puts "Player 2 has chosen #{sqchoice2}."
	currentboard[sqchoice2] = "#{@player2}"
	puts arena("This is the current board", currentboard)
end

def full_board?(array)
	if array.include? " "
	false
	else
	true
	end
end
end
