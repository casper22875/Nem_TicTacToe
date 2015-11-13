require 'sinatra'
require_relative"ttt_game_logic.rb"

game = TicTacToe.new


get '/board' do 
	erb :board
end

post '/board' do
	game.player1 = params[:choice].upcase
	game.player2 = game.p2_marker(game.player1)
	erb :move ,:locals => {:player1 => game.player1, :player2 => game.player2, :message => "Player1 is#{game.player1}and Player2 is #{game.player2}", :board => game.board}
	
end

