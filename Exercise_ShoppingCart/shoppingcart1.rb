class Item
	attr_reader :price, :name

	def initialize(price, name)
		@price = price
		@name = name
	end
	def barcode
		[@name, @price]
	end
end

class Oranges < Item
end
class Bananas < Item
end
class Apples < Item
end
class Grapes < Item
end
class Watermelons < Item
end

oranges = Oranges.new(5, "Oranges")
bananas = Bananas.new(20, "Bananas")
apples = Apples.new(10, "Apples")
grapes = Grapes.new(15, "Grapes")
watermelons = Watermelons.new(50, "Watermelons")

class ShoppingCart
	def initialize
		@total_items = []
	end
	def add_to_cart(item)
		@total_items << item.barcode
	end
	def calculate_total
		@total_price = 0
		@number_of_items = @total_items.length
		for item in @total_items
			@total_price += item[1]
		end
		puts "Thank you so much, your total today for #{@number_of_items} items is #{@total_price} euros."

	end
end

my_cart = ShoppingCart.new
my_cart.add_to_cart(oranges)
my_cart.add_to_cart(bananas)
my_cart.calculate_total



