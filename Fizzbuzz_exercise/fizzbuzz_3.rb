#using #.each

numbers = []
a = 1
while numbers.length < 100
	numbers.push a
	a +=1
end

numbers.each do |number|
	if number % 3 == 0 && number % 5 == 0
		puts "FizzBuzz"
	elsif number % 3 == 0
		puts "Fizz"
	elsif number % 5 == 0
		puts "Buzz"
	else
		puts number
	end
end


#using range
puts
puts "One more time"
puts 

(1..100).each do |number|
	if number % 3 == 0 && number % 5 == 0
		puts "FizzBuzz"
	elsif number % 3 == 0
		puts "Fizz"
	elsif number % 5 == 0
		puts "Buzz"
	else
		puts number
	end
end


