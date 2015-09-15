require 'date'

class Item
	attr_accessor :price, :name

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
	attr_accessor :quantity
	def quantity(quantity)
		@quantity = quantity
	end
	def discount
		@discounted_price = 0
		if @quantity != nil && @quantity % 2 == 0
			@discounted_price
		else
			@price
		end
	end

	def barcode
		[@name, discount, @quantity]
	end
end
class Grapes < Item
end
class Watermelons < Item
	def discount_watermelons
		if Date.today.strftime("%A") == "Saturday" || Date.today.strftime("%A") == "Sunday"
			@price = @price * 0.9
		end
		@price
	end
	def barcode
		[@name, discount_watermelons]
	end
end

oranges = Oranges.new(5, "Oranges")
bananas = Bananas.new(20, "Bananas")
apples = Apples.new(10, "Apples")
grapes = Grapes.new(15, "Grapes")
watermelons = Watermelons.new(50, "Watermelons")

class ShoppingCart
	attr_reader :total_items
	def initialize
		@total_items = []
	end
	def add_to_cart(item)
		if item.barcode[0] == "Apples"
			if item.barcode[2] == nil
				item.quantity = 1
			else
				item.quantity = item.barcode[2] + 1
			end
		end
		@total_items << item.barcode
	end
	def number_of_items
		@number_of_items = @total_items.length
	end
	def calculate_total
		@total_price = 0
		for item in @total_items
			@total_price += item[1]
		end
		@total_price
	end
	def discount_five
		@number_of_items = number_of_items
		if @number_of_items > 5
			calculate_total * 0.05
		else
			0
		end
	end
	def discount_over_hundred
		if calculate_total - discount_five > 100
			10
		else
			0
		end
	end
	def discounted_total
		calculate_total - discount_five - discount_over_hundred
	end
	def apple_discount_tag
		@list = []
		for item in @total_items
			if item[0] == "Apples" && item[2] == 2
				@list << "2 for 1 apples discount"
			end
		end
		@list
	end
	def watermelons_discount_tag
		@list = []
		for item in @total_items
			if item[0] == "Watermelons"
				if Date.today.strftime("%A") == "Saturday" || Date.today.strftime("%A") == "Sunday"
					@list << "Watermelons 10% off weekend discount"
				end
			end
		end
		@list
	end
	def discount_five_tag
		@list = []
		if discount_five != 0 
			@list << "More than 5 items 5% off discount"
		end
		@list
	end
	def discount_hundred_tag
		@list = []
		if discount_over_hundred != 0
			@list << "Over 100 euros purchase 10 euros off"
		end
		@list
	end
	def discount_tag_list
		@discount_list = []
		for item in [apple_discount_tag, watermelons_discount_tag, discount_five_tag, discount_hundred_tag]
			if item != []
				@discount_list = @discount_list + item
			end
		end
		@discount_list
	end
	def tagline
		@discount_list = discount_tag_list
		puts "Thank you so much for buying at Mini Mart."
		if @discount_list.length != 0
			puts "Applicable discounts are:"
			for entry in @discount_list
				puts "=> #{entry}"
			end
		end
		puts "Your total today for #{number_of_items} items is #{discounted_total} euros, have a good day!"
	end
end




my_cart = ShoppingCart.new
my_cart.add_to_cart(oranges)
my_cart.add_to_cart(oranges)
my_cart.add_to_cart(bananas)
my_cart.add_to_cart(watermelons)
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