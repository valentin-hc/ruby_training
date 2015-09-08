
def solve_cipher(input, n)
	original = input.split("")
	unencrypted = [] 
	for char in original
		if char == " "
			unencrypted << " "
		else
			ord_track = char.ord + n
			if ord_track >= 97 && ord_track <= 122
				unencrypted << (ord_track).chr
			elsif ord_track < 97
				ord_track = 122 - 97 + ord_track + 1
				unencrypted << ord_track.chr
			elsif ord_track > 122
				ord_track = ord_track - 1 - 122 + 97
				unencrypted << ord_track.chr
				
			end
		end
	end
	puts unencrypted.join

end

solve_cipher("pb uhdo qdph lv grqdog gxfn", -3)
solve_cipher("brxu uhdo qdph lv grqdog gxfn", -3)
solve_cipher("yly fp jv obxi kxjb", 3)


