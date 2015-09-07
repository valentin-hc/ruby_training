#More complete version, leaving capital letters on the words they were on original sentence.

def word_sorting(string)
	first_split = string.split(" ")
	result =[]
	for word in first_split
		if word.include? "."
			result += word.split(".")
		elsif word.include?(",")
			result += word.split(",")
		elsif word.include?("!")
			result += word.split("!")
		elsif word.include?("?")
			result += word.split("?")
		elsif word.include?(":")
			result += word.split(":")
		elsif word.include?(";")
			result += word.split(";")
		else
			result << word
		end
	end
	second_result = []
	track = []
	for entry in result
		if entry.capitalize == entry
			track << entry.downcase
			second_result << entry.downcase
		else
			second_result << entry
		end
	end
	capitalized = []
	sorted = second_result.sort 
	for item in sorted
		for caps in track
			if item == caps
				capitalized << item.capitalize
			end
		end
		if !capitalized.include? item.capitalize
			capitalized << item
		end
	end
	capitalized


end

print word_sorting("Have a nice day Bob, Mary, and Jo.")
puts
print word_sorting("Fools fall for foolish follies, am I right Mr. Frank ?")
puts
print word_sorting("Ruby is a fun language!")

