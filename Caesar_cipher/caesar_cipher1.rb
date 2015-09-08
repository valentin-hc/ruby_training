def solve_cipher(input)
	original = input.split("")
	unencrypted = [] 
	for char in original
		if char == "a"
			unencrypted << "z"
		else
			unencrypted << (char.ord - 1).chr
		end
	end
	puts unencrypted.join

end

solve_cipher("ifmmp")
solve_cipher("afcsb")