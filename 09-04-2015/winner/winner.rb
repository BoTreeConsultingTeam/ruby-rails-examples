class Winner
	def self.find(players,difference)
		temp_arr = []
		players.times {|i| temp_arr[i] = "Player-#{i+1}"}
		count = 0
		begin
		 	eliminate_player = (count + difference) % players
			temp_arr.delete_at(eliminate_player-1)
			players = temp_arr.size
      count = (eliminate_player.zero?) ? players : eliminate_player - 1
		end until players == 1
		temp_arr[0]
	end
end