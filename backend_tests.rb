require_relative "ttt_game_logic.rb"

require "minitest/autorun"

class Ttt_tests < Minitest::Test

def test_game_initialization
	game = TicTacToe.new("","","","")
	assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9"],game.board)
	assert_equal("", game.player1)
	assert_equal("", game.player2)
	assert_equal(1,game.current)
	end
def test_update_board
	game = TicTacToe.new("","","","")
	game.board[0] = "X"
	assert_equal(["X","2", "3", "4", "5", "6", "7", "8", "9"], game.board)
	end

def test_update_marker
	game = TicTacToe.new("","","","")
	game.player1 = "X"
	assert_equal("X", game.player1)
	assert_equal(1, game.current)
	end

def test_validate_move
	choice = 7
	game = TicTacToe.new("","","","")
	game.board[0] = "X"
	currentboard = game.board
	assert_equal(true,game.valid_square?(choice,""))
	assert_equal(false,game.valid_square?(0,""))
	assert_equal(false,game.valid_square?(1,""))
	end
	
def test_for_updating_board
		game = TicTacToe.new("","","","")
		game.board[0] = "X"
		assert_equal(game.board,["X","2", "3", "4", "5", "6", "7", "8", "9"])
end

def test_for_computer_winning_moves
	game.board = ["O","O","3","4","5","6","7","8","9"]
	game.player1 = "X"
	game.player2 = "O"
	game.current = 2
	assert_equal(["O","O","O","4","5","6","7","8","9"],game.board)
end







end