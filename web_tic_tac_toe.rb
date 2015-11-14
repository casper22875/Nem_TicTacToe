require 'sinatra'
require_relative"ttt_game_logic.rb"

game = TicTacToe.new(@board, "", "", 1)


get '/board' do 
	erb :board, :locals => {:board => game.board,:message => "Let's play Tic Tac Toe!", :message2 => "Do you want X or O ?", :message3 => "", :message4 => ""}
end

post '/board' do
	game.player1 = params[:selection].upcase
	player_marker =game.current_player()
		
	game.player2 = game.p2_marker(game.player1)
	erb :move ,:locals => {:current => game.current,:message => "Player1 is #{game.player1} and Player2 is #{game.player2}", :board => game.board}
	
end

post '/move' do	
	choice = params[:choice].to_i
	player_marker = game.current_player()
	
	if game.valid_square?(choice, game.board) == true
		game.board[choice - 1] = player_marker
			
			if game.board_full?(game.board) == false && game.win(game.board) == false
				game.current = game.switch_players()
				erb :move, :locals => { :current => game.current, :message => "Player #{player_marker} has chosen square #{params[:choice]}.", :board => game.board }
			elsif game.win(game.board) == true
				erb :gamewon, :locals => {:message => "", :message2 => "Do you want X or O ?", :message3 => "!!Play again!!",:message4 => "Player #{player_marker} has won.", :board => game.board }
			else game.board_full?(game.board) == true
			erb :gamewon, :locals => {:message => "", :message2 => "Do you want X or O ?", :message3 => "",:message4 => "Players have tied.", :board => game.board }
			end
			else erb :move, :locals => { :current => game.current, :message => "Choice is already Taken. Please Try again", :board => game.board }
		end
 end
 
 post '/replay' do
	choice = params[:selection]
	game = TicTacToe.new(@board, "", "", 1)
		if choice == "y"
			erb :board, :locals => {:board => game.board,:message => "Let's play some tic tac toe!", :message2 => "Do you want X or O ?", :message3 => "", :message4 => ""}
			
		else
			erb :board, :locals => {:board => game.board,:message => "Giving up already?", :message2 => "", :message3 => "", :message4 => ""}
	
		end

 end