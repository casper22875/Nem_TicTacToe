boardarray=[*(0..8)]
# print boardarray
currentboard=Array.new(9," ")

def arena(arena_message,boardarray)
puts arena_message
puts """ _#{boardarray[0]}_|_#{boardarray[1]}_|_#{boardarray[2]}_
 _#{boardarray[3]}_|_#{boardarray[4]}_|_#{boardarray[5]}_
  #{boardarray[6]} | #{boardarray[7]} | #{boardarray[8
 ]} """
end


arena("Welcome to Tic Tac Toe",boardarray)
arena("This is the current board",currentboard)


def player1_marker
	puts "Player 1 please choose X or O."
	gets.chomp.upcase
end

player1 = player1_marker

puts "Player 1 has chosen #{player1}."

def player2_marker(marker1)
if marker1 == "X"
then "O"
else "X"
end
end

player2 = player2_marker(player1)
puts "player 2 is #{player2}"

puts "Player 1 please choose a square between 0-8"
sqchoice = gets.to_i
puts "Player 1 has chosen #{sqchoice}"
currentboard[sqchoice] = "#{player1}"
puts arena("This is the current board",currentboard)

puts "Player 2 , please a square between 0-8"
sqchoice2 = gets.to_i
puts "Player 2 has chosen #{sqchoice2}."
currentboard[sqchoice2] = "#{player2}"
puts arena("This is the current board", currentboard)
