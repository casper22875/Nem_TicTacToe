require_relative "ttt_game_logic.rb"

require "minitest/autorun"

class Ttt_tests < Minitest::Test

def test_game_initialization
	game = TicTacToe.new
	assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9"],game.board)
	assert_equal("", game.player1)
	assert_equal("", game.player2)
	assert_equal("",game.current)
	end
def test_update_board
	game = TicTacToe.new
	game.board[0] = "X"
	assert_equal(["X","2", "3", "4", "5", "6", "7", "8", "9"], game.board)
	end

def test_update_marker
	game = TicTacToe.new
	game.player1 = "X"
	assert_equal("X", game.player1)
	# assert_equal("X", game.current)
	end

def test_validate_move
	choice = 7
	game = TicTacToe.new
	game.board[0] = "X"
	currentboard = game.board
	assert_equal(true,game.validate_move(choice))
	assert_equal(false,game.validate_move(0))
	assert_equal(false,game.validate_move(1))
	end
	

end