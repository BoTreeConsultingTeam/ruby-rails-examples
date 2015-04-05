class Coins
	@available_coins = [ 10.0, 5.0, 2.0, 1.0, 0.50, 0.25]
	def self.count(money)
		@arr = []
		change(money.to_f, @available_coins)
	end

	def self.change(money, available_coins)
		new_arr = available_coins.reject{|c|c > money}	
		division_val = money / new_arr[0]
		count = new_arr[0] >= 1	? division_val.to_i : division_val
		money = money - (count.to_i * new_arr[0])
		@arr << count
		return @arr.inject(:+).to_i unless money != 0 
		change(money, new_arr) 
	end
end