require_relative "groupttt.rb"
require "minitest/autorun"

class TTtoe < Minitest::Test

def test_set_player2_marker
	
	assert_equal("O", Game.new.player2_marker("X"))
	assert_equal("X", Game.new.player2_marker("O"))
	end

def test_valid_marker
	assert_equal(true, Game.new.valid_marker?("X"))
	assert_equal(true, Game.new.valid_marker?("O"))
	assert_equal(false, Game.new.valid_marker?("S"))
	assert_equal(false, Game.new.valid_marker?("1"))
end

def test_full_board
	assert_equal(true,Game.new.full_board?(["X","O","X","O","X","O","O","X","X"]))
	assert_equal(false,Game.new.full_board?([" "," "," "," "," "," "," "," "," "]))
end













end