require 'sinatra'
require_relative "ttt_game_logic.rb"


game = TicTacToe.new(@board, "", "", 1,"")


get '/board' do
	erb :board, :locals => {:board => game.board,
							:message => "Let's play some tic tac toe!", 
							:message2 => "Do you want to play Human or Computer?", 
							:message3 => "Do you want X or O", 
							:message4 => ""}
end


post '/board' do
  game.player1 = params[:selection].upcase
  player_marker = game.change_player()
  game.player2 = game.p2_marker(game.player1)
  puts  "Gametype equals #{params[:gametype]}"
  game.gametype = params[:gametype]
	
		erb :move, :locals => {:current => game.current, 
							   :message => "Player 1 is #{game.player1} and Player 2 is #{game.player2}.", 
							   :message2 => "Current gametype is #{game.gametype}",
							   :board => game.board}
	end


post '/move' do
	choice = params[:choice].to_i
	player_marker = game.change_player()
	
	if game.valid_square?(choice, game.board) == true
		game.board[choice - 1] = player_marker
			
			if game.board_full?(game.board) == false && game.win(game.board) == false
				game.current = game.switch_players
				
				if game.gametype == "AI"
				   game.board_select_random(game.board)
				    
					if game.board_full?(game.board) == false && game.win(game.board) == false
						game.current = game.switch_players
										
			
						erb :move, :locals => { :current => game.current, 
											  :message => "Please choose a square.", 
											  :board => game.board }
										 
					elsif game.win(game.board) == true
						  redirect to ('/gameover')
						  
					
					else game.board_full?(game.board) == true
						 erb :board, :locals => {:message => "", 
									:message2 => "Do you want X or O?", 
									:message3 => "",
									:message4 => "Players have tied.", 
									:board => game.board }
					end
				else erb :move, :locals => { :current => game.current, 
										 :message => "Choice is already taken, Please try again", 
										 :board => game.board }
			end
		end
	end
end

get '/gameover' do
	erb :gamewon, :locals => { :current => game.current, 
							   :message => "Game is over and #{game.change_player} has won.", 
							   :board => game.board }

end
post '/replay' do
	choice = params[:selection]
	game = TicTacToe.new(@board, "", "", 1,"")
	if choice == "y"
	   erb :board, :locals => {:board => game.board,
									:message => "Let's play some tic tac toe!", 
									:message2 => "Do you want X or O?", 
									:message3 => ""}
			
	else
	  erb :board, :locals => {:board => game.board,
									:message => "", 
									:message2 => "!!!Pick X or O!!!", 
									:message3 => ""}
			
		
	end
 end