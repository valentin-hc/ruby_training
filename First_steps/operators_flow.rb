#puts 2 == 3
#puts 2 < 3
#puts 2 <= 3
#puts 2 >= 3

#puts "two" == 2
#puts "two" > "three"
#puts "a" > "b"
#puts "b" > "a"
#puts "one million" < "two millions"
#puts "two" < 2 # error


#&& and || : && compares 2 statements and returns true if both are true. || return true if at least one is true

#puts 1 == 1 && 1 > 2
#puts 1 == 1 && 3 > 2
#puts 1 == 1 || 1 > 2
#puts 1 == 1 || 3 > 2
#puts 1 == "one" ||  1 > 2

#puts 1 != 2
#puts true == !false

#puts "Which animal do you like?"
#animal = gets.chomp
#if animal == "Dog"
	#print "You like dogs. Woof !"
#elsif animal == "Cat"
	#print "You like cats. Meow !"
#else
	#print "You don't like cats or dogs? Sucks."
#end

numbers = [1,2,3]
#for element in numbers 
	#puts "-> #{element}"
	#puts element
#end

string = ""

while string.length < 10
	string += "a"
end

#puts "The final string is #{string}"


numbers = ["One", 2, "Three"]

#numbers.each do |item| #item is just a variable chosen here
	#puts "--> #{item}"
#end


my_hash = {}
my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"
my_hash["CAT"] = "Catalunya"

my_hash.each do |key,value|
	puts "#{key} stands for #{value}"
end