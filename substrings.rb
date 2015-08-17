dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
	frequencies = Hash.new(0)
	
	dictionary.each_index do |word|
		frequencies.store(dictionary.fetch(word), string.scan(/#{dictionary[word]}/i).length)
	end
	frequencies.each_pair {|key, value| puts "#{key} => #{value}"}
end

substrings("Howdy partner, sit down! How's it going?", dictionary)