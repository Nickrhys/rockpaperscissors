class Game 

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
		@players = [@player1, @player2]
	end

	BEATS = {stone: :scissors, scissors: :paper, paper: :stone}
	LOSES = {scissors: :stone, paper: :scissors, stone: :paper}

	attr_reader :players, :player1, :player2

	def winner
		return "Draw" if player1.pick == player2.pick
		return player1  if BEATS[normalize(player1.pick)] == normalize(player2.pick)
		player2
	end
#Need to add test for loser status. 
	def loser
		return player1  if LOSES[normalize(player1.pick)] == normalize(player2.pick)
		player2
	end
		
	def normalize(pick)
		pick.downcase.to_sym
	end
end