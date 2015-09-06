#result and <<

number = 1
while number <= 100
	result = ""
	if number % 3 == 0 && number % 5 == 0
		result << "FizzBuzz"
	elsif number % 3 == 0
		result << "Fizz"
	elsif number % 5 == 0
		result << "Buzz"
	else
		result = number
	end
	start_with_one = number.to_s.split(//)
	if result == number && start_with_one[0].to_i == 1
		result = "Bang"
	elsif start_with_one[0].to_i == 1
		result << "Bang"
	end
	puts result
	number += 1
end

