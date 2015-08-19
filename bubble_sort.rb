def bubble_sort(array)

	loop do
		swap_count = 0
		
		array.each_index do |index| 
			
			if (array[index] <=> array[index + 1]) == 1
				array[index], array[index + 1] = array[index + 1], array[index]
				swap_count += 1	
			end
		end
		break if swap_count == 0
	end
	p array
end

bubble_sort([4,3,78,2,0,2])