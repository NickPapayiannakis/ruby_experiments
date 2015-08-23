# My Enumerable

module Enumerable

	def my_each 
		return self unless block_given?
		for i in 0 ...length
			yield(self[i])
		end
	end


	def my_each_with_index
		return self unless block_given?
		for i in 0 ...length
			yield(self[i], i)
		end	
	end

	def my_select
		new_array = []
		return self unless block_given?
		my_each {|i| new_array << i if yield(i)}
		new_array
	end


    def my_all?
	    if block_given?
	      my_each { |i| return false unless yield(i) }
	    else
	      my_each { |i| return false unless i }
	    end
	    true
    end

    def my_any?
    	if block_given?
	      my_each { |i| return true unless !yield(i) }
	    else
	      my_each { |i| return true unless !i }
	    end
	    false
    end

    def my_none?
    	if block_given?
	      my_each { |i| return true unless yield(i) }
	    else
	      my_each { |i| return true unless i }
	    end
	    false
    end

    def my_count(num = nil)
    	count = 0
    	if block_given?
	      my_each {|i| count +=1 if yield(i)}
	    elsif num.nil?
	    	count = length
	    else
	      my_each {|i| count +=1 if i}
	    end
	    count
    end

    def my_map
		new_array = []
		return self unless block_given?
		my_each {|i| new_array << yield(i)}
		new_array
	end

end #end of module