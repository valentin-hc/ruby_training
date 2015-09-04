#The main diff between " an ' is that " allows the use of backlash \
puts "Hello\nworld"
puts 'Hello\nworld'
puts
# it also allows interpolation in string 
name = "Val"
puts "Hi #{name}"
puts

#Asking questions with gets.chomp
puts "What's your name?"
name1 = gets.chomp
puts "Hello, #{name1}"
puts

#to_i : i for integer
puts "Give me 2 numbers"
num_1 = gets.chomp.to_i
num_2 = gets.chomp.to_i

puts "#{num_1} x #{num_2} = #{num_1 * num_2}"

#Reading and writing files
file_contents = IO.read("hello.rb")
puts "Hello.rb contains : #{file_contents}"


#following script creates a txt file with whatever the answer to chomp is written in.
puts "What's your name?"
name = gets.chomp
IO.write('name.txt', name)


