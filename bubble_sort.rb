=begin
	
PROBLEM: Build a method #bubble_sort that takes an array and returns a sorted array. 
It must use the bubble sort methodology. 

CONSTRAINTS: 

Must be written in Ruby
Must not use any pre-defined sort method from ruby library
Must sort an unknown number of array elements
Must return results as new array
Must make passes comparing 2 elements at a time

RESTATE THE PROBLEM

Like in the military, people are lined up in single file.  People swap tallest to shortest
going through the file repeatedly until the line is sorted.

REDUCTION

DONE 1. Define a method called bubble_sort which accepts and array as an argument
DONE 2. Find a way to loop through the array
3. Determine a way to compare two array elements to each other.
4. Find a way to store the results in a new array and iterate on it in the next pass
5. Find a way to keep track of progress through the loop.
6. Find a way to terminate the loop once the sorted condition is met
7. Determine how to output the results to screen after finished. 

PSEUDO-CODE

bubble_sort(array)
	loop through each element of array until array.none?(x <=> y == 0 || 1)
		keep track of iteration?
		compare each element to the one after it.
		if element[left] < element[right]
			element[left], element[right] = element[right], element[left]
		end
end
	
=end

def bubble_sort(array)
	finished = false

	until finished
		swap_count = 0
		
		array.each_index do |index| 
			
			if (array[index] <=> array[index + 1]) == 1
				array[index], array[index + 1] = array[index + 1], array[index]
				swap_count += 1	
			end
		end

		if (swap_count == 0)
			finished = true
		end
	end
	p array
end


bubble_sort([4,3,78,2,0,2])
