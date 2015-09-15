require 'date'

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
		for item in @total_items
			@total_price += item[1]
		end
		@total_price
	end

	def discount_five_items
		@discount_five = 0
		@number_of_items = @total_items.length
		@total_price = calculate_total
		if @number_of_items > 5
			@discount_five = @total_price * 0.05
			@total_price = @total_price - @discount_five
		end
		[@total_price, @discount_five]
	end

	def discount_apples
		@total_price = discount_five_items[0]
		@apple_count = 0
		for item in @total_items
			if item[0] == "Apples"
				@apple_count +=1
				@apple_price = item[1]
			end
		end
		@apple_discount = 0
		if @apple_count >= 2
			if @apple_count >= 2 && @apple_count % 2 == 0
				@apple_discount += (@apple_count * @apple_price)/2
			else
				@apple_discount += ((@apple_count -1) * @apple_price)/2
			end
			@total_price = @total_price - @apple_discount
		end
		[@total_price, @apple_discount]
	end

	def discount_over_hundred
		@discount_ten = 0
		@total_price = discount_apples[0]
		if @total_price > 100
			@discount_ten = 10
			@total_price = @total_price - @discount_ten
		end
		[@total_price, @discount_ten]
	end

	def discount_watermelons
		@total_price = discount_over_hundred[0]
		@watermelon_discount = 0
		if Date.today.strftime("%A") == "Saturday" || Date.today.strftime("%A") == "Sunday"
			for item in @total_items
				if item[0] == "Watermelons"
					@watermelon_discount += item[1] * 0.1
				end
			end
			@total_price = @total_price - @watermelon_discount
		end

		[@total_price, @watermelon_discount]
	end
	
	def tagline
		puts "Thank you so much for buying at Mini Mart."
		@discount_list = []
		if discount_five_items[1] != 0
			@discount_list << "More than five items, 5% off"
		end
		if discount_apples[1] != 0
			@discount_list << "2 for 1 apples discount"
		end
		if discount_over_hundred[1] != 0
			@discount_list << "10 euros off for purchases over a 100 euros"
		end
		if discount_watermelons[1] != 0 
			@discount_list << "Weekend Watermelons 10% off"
		end
		if @discount_list.length != 0 
			puts "Your applicable discounts today are:"
			for discount in @discount_list
				puts "=> #{discount}"
			end
			puts "And your total for #{@total_items.length} items is #{discount_watermelons[0]} euros."
		else
			puts "Your total today for #{@total_items.length} items is #{calculate_total} euros."
		end
		puts "Thanks for coming in, have an awesome day!"
	end

	
	
end

my_cart = ShoppingCart.new
my_cart.add_to_cart(oranges)
my_cart.add_to_cart(watermelons)
my_cart.add_to_cart(oranges)
my_cart.add_to_cart(bananas)
my_cart.add_to_cart(apples)
my_cart.add_to_cart(apples)
my_cart.add_to_cart(apples)
my_cart.add_to_cart(apples)
my_cart.add_to_cart(apples)
my_cart.add_to_cart(apples)
my_cart.add_to_cart(bananas)
my_cart.add_to_cart(oranges)
my_cart.add_to_cart(grapes)

my_cart.tagline
