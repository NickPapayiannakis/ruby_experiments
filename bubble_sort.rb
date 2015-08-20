#Bubble sort script whithout block as argument
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
	array
end

bubble_sort([4,3,78,2,0,2])


#Bubble sort script with a block as argument
def bubble_sort_by(array)

	loop do
		swap_count, i = 0, 0
		
		while i < array.length - 1 
			
			if yield(array[i], array[i + 1]) > 0
				array[i], array[i + 1] = array[i + 1], array[i]
				swap_count += 1	
			end
			i += 1
		end
		break if swap_count == 0	
	end
	array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length - right.length
 end