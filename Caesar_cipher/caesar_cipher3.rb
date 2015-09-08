
def solve_cipher(input)
	original = input.split("")
	unencrypted = [] 
	for char in original
		if char == " "
			unencrypted << " "
		else
			ord_track = (char.ord) -3
			if ord_track >= 97 && ord_track <= 122
				unencrypted << (ord_track).chr
			else ord_track < 97
				ord_track = 122 - 97 + ord_track + 1
				unencrypted << ord_track.chr
			end
		end
	end
	puts unencrypted.join

end

solve_cipher("pb uhdo qdph lv grqdog gxfn")
solve_cipher("brxu uhdo qdph lv grqdog gxfn")


