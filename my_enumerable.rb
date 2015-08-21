# My Enumerators

module Enumerable

	def my_each 
		return self unless block_given?
		for i in 0 ...length
			yield(self[i])
		end
	end


	def my_each_with_index
		return self unless block_given?
		for i in 0 .. length
			yield(self[i], i)
		end	
	end

	def my_select
		new_array = []
		return self unless block_given?
		self.my_each {|i| new_array << i if yield(i)}
		new_array
	end

end



