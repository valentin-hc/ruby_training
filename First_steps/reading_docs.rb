#    :: are class methods (specific to a class like string or array for example) whereas # are instance methods (invokable on various instances of objects)
#    

my_string = String.new("Hola") #instance method
#puts my_string.size
#puts String.try_convert("str") #string method


#Stdlib = Standard library. Comes with every Ruby implementation. Needs to be required. 

obj = {}
other = {}

puts obj !~ other
puts obj <=> other
puts obj === other
puts obj =~ other
puts self.class
puts 1.class

puts obj.clone

guy = "bob"
guy.define_singleton_method(:hello) { "#{self}: Hello there !"}
puts guy.hello

1.display #prints the obj on the given port  (port=$>)
"cat".display
[1,2,3].display
puts


puts obj == other
puts obj.equal? other
puts obj.equal? obj
puts obj.eql? other
puts
puts 1 == 1.0
puts 1.equal? 1.0
puts 1.eql? 1.0
