require 'pp'
require './player'
require './questions'


##created players as global variables
 $p1 = @players[0]
 $p2 = @players[1]

 # method that shows the game scores
 def show_score
	 puts "p1 : #{$p1.life}/3 vs p2 : #{$p2.life}/3"
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
	
	# player_1 input
	choice = $stdin.gets.chomp.to_i

	# checking if user input is correct
	# if !(1..20).include?(choice)
	# 	puts "enter a valid number"
	
	#game gets question
		question = (get_question(choice))[:problem]
		puts question
	

	#game stores correct answer
	correct_answer = get_question(choice)[:answer]

	print 'type your answer > : '
	#player answers
	user_answer = $stdin.gets.chomp.to_i
	#game checking correct answer
	vet = correct_answer == user_answer 

	if vet
		puts "✅ Correct!!! great job"
		puts "#{ $current_player.name} has #{ $current_player.life}/3"
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
 puts "game has started!!!"
 puts "p1 : #{$p1.name} vs p2 : #{$p2.name}"

	while ($p1.life != 0 && $p2.life != 0)
		$current_player = $p1
			game_round
		$current_player = $p2
			game_round
	end
end_game

end

start_game
