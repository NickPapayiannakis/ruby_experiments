dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
	frequencies = Hash.new(0)

	dictionary.each_index do |substring|
		frequencies.store(dictionary.fetch(substring), string.scan(/#{dictionary[substring]}/i).length)
	end
	frequencies.each_pair {|word, count| puts "#{word} => #{count}"}
end

substrings("Howdy partner, sit down! How's it going?", dictionary)