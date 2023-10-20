require 'pp'
require './player'
require './questions'


##created players as global variables
 $p1 = Player.new('p1')
 $p2 = Player.new('p2')

 # method that shows the game scores
 def show_score
	 puts "#{$p1.name}: #{$p1.life}/3 vs #{$p2.name}: #{$p2.life}/3"
 end

 # method to close the game
 def end_game
	if ($p1.life ==0 || $p2.life == 0)
		puts "game over 🎮"
		show_score
		end
 end

 def game_round
	
	# round 1 player_1 starts
	puts "#{$current_player.name} select a question number from 1-20 "
	print '>'
	
	# player input
	input = $stdin.gets.chomp.to_i

	#game gets question
		question = (get_question(input))[:problem]
		puts question
	
	#game stores correct answer
	correct_answer = get_question(input)[:answer]

	print 'type your answer > : '
	#player answers
	user_answer = $stdin.gets.chomp.to_i
	#game checking correct answer
	vet = correct_answer == user_answer 

	if vet
		puts "✅ Correct!!! great job"
		puts "#{ $current_player.name} has #{ $current_player.life}/3 lives left"
	else 
		puts "❌ such  whooper!!! correct answer is #{correct_answer}"
		$current_player.lose_life
		puts "#{ $current_player.name} has #{ $current_player.life}/3 lives left"
		
	end

	show_score
	if ($current_player.life == 0)
		return
	end
end

def start_game
 puts "A New Game Has Started!!! 😎"

 # gets players name
 puts "select a player name for p1"
		print '>'
		# player input
		input = $stdin.gets.chomp
		$p1.name = input

 puts "select a player name for p2"
		print '>'
		# player input
		input = $stdin.gets.chomp
		$p2.name = input

 puts "New Match :- p1: #{$p1.name} vs p2: #{$p2.name}"

	while ($p1.life != 0 && $p2.life != 0)
		$current_player = $p1
			game_round
		$current_player = $p2
			game_round
	end
end_game

end

start_game
