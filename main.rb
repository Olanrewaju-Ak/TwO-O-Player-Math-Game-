require 'pp'
require './player'
require './questions'
require './helpers'



def start_game
 puts "game has started!!!"
 # round player_1 starts
 puts "#{@players[0].name} select a question number from 1-20 "
 print '>'
 
 # player_1 input
 choice = $stdin.gets.chomp.to_i

 #game gets question
 question = (get_question(choice))[:problem]
 puts question
 #game stores correct answer
 correct_answer = get_question(choice)[:answer]

 print 'type your answer > : '
 #player answers
 user_answer = $stdin.gets.chomp.to_i
#game checking correct answer
vet = correct_answer === user_answer 



 if vet
	 puts "✅ Correct!!! great job"
 else 
	puts "❌ such  whooper!!! correct answer is #{correct_answer}"
	@players[0].lose_life
	puts "#{@players[0].name} has #{@players[0].life}/3"
 end
end

start_game

