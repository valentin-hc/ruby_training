#Bang !

number = 1
output = ""

while number <= 100
	if number % 3 == 0 && number % 5 == 0
		output = "FizzBuzz"
	elsif number % 3 == 0
		output = "Fizz"
	elsif number % 5 == 0
		output = "Buzz"
	else
		output = number
	end
	start_with_one = number.to_s.split(//)
	if output == number && start_with_one[0].to_i == 1
		output = "Bang"
	elsif start_with_one[0].to_i == 1
		output = output + "Bang"
	end
	puts output
	number += 1
end

