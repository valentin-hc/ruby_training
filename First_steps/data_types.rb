# use of /n, \ in string

###unescaped_string = 'This is Sharon's unescaped string'' #this produces an error
escaped_string ='This is Sharon\'s escaped string'

movie = "Finding Nemo"
#puts "My favourite movie is #{movie}"

#Methods for strings
name = "mr. Bond"
capitalized_name = name.capitalize 
#puts "Hello #{capitalized_name}"

flavours = "chocolate, mint, strawberry, vanilla, caramel, chili"
flavours_array = flavours.split(", ")
#print flavours_array
#puts flavours_array

#puts "How many characters here ?".length

#puts "awesome".include? "you"
#puts "awesome".include? "me"
phrase = "Ok you are awesome too !"
#puts phrase.include? "awesome"



#Integers / Floats (i.e 1.5)
#Integers are divided into 2 classes : Fixnum and Bignum
age = 28
cats = 5

stars_in_milkyway = 325_006_357_011 #easier to read !!

age = 28
#puts age.odd?
#puts age.even?
#puts age.round(-1) #the argument you pass tells the mothod how to round it
#puts age.round(1)

#3.times {puts "beetlejuice"}


#Arrays
animals = ["Lions", "Tigers", "Bears"]
#puts animals
numbers = ["one", 2, "three"]
#puts numbers[1]

my_array = []
my_array << "A"
my_array.push "B"
my_array.push "C"

#puts my_array

my_array.delete_at 2
#puts my_array
#print [5,6,3,1,2,7,9,2,3].sort
#puts
array_test = ["b", "t", "a", "z", "l"]
#print array_test.sort
#puts
#puts array_test.join
#puts array_test.join(", ")

my_hash = {}
my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"
#puts my_hash["AST"]
#puts my_hash

check = my_hash.has_key?("AST")
check2 = my_hash.has_key?("CAT")
check3 = my_hash.has_value?("Galicia")
#puts check
#puts check2
#puts check3

select_ex = my_hash.select {|key, value| key.include?("G")}
#puts select_ex

puts "what is this?".class
puts 3.class
puts [].class



