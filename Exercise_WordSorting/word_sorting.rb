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
	final_result = []
	for entry in result
		entry = entry.downcase
		final_result << entry
	end
	final_result.sort


end

print word_sorting("Have a nice day.")
puts
print word_sorting("Fools fall for foolish follies.")
puts
print word_sorting("Ruby is a fun language!")

