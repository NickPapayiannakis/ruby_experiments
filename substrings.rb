dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
	frequencies = Hash.new(0)

	dictionary.each do |substring|
		frequencies.store(substring, string.scan(/#{substring}/i).length)
	end
	frequencies.each_pair {|word, count| puts "#{word} => #{count}" if count > 0}
end

substrings("Howdy partner, sit down! How's it going?", dictionary)