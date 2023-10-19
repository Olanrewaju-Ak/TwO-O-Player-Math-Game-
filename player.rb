class Player

		attr_accessor :name ,:life
	def initialize(n)
		@name = n
		@life = 3
	end

	def lose_life
		if(life>0)
	 		@life -=1
		end
	end

end

player_1= Player.new('john')
player_2= Player.new('james')

@players = [player_1, player_2]

