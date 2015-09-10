class Shakeshack
	def initialize
		@price = 0
		@shakes = []
	end
	def add_shake(shake)
		@shakes << shake.shake_info
	end
	def total_price
		@total_price = 0
		@shakes.each do |shake|
			@total_price += shake[1]
		end
		@total_price
	end
	def shakeshack_bill
		@shakes.each do |shake|
			puts "For #{shake[0]}, ingredients : #{shake[2]}, #{shake[1]} euros. "
		end
		puts "Total price for this order: #{total_price} euros. Thank you so much for stoping by Josh's Shake Shack, have a good day!"
	end
end



class MilkShake
	attr_reader :customer_name
	def initialize(customer_name)
		@customer_name = customer_name
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def price_of_milkshake
		@total_price_of_milkshake = @base_price
		@ingredients.each do |ingredient|
			@total_price_of_milkshake += ingredient.price
		end
		@total_price_of_milkshake
	end
	def milkshake_ingredients
		@ingredient_list = []
		@ingredients.each do |ingredient|
			@ingredient_list << ingredient.name
		end
		@ingredient_list
	end
	def shake_info
		[@customer_name, price_of_milkshake, milkshake_ingredients]
	end

end

class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end


banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
vanilla_ice = Ingredient.new("Vanilla Ice", 3)
whip_cream = Ingredient.new("Whip Cream", 1)

nizars_milkshake = MilkShake.new "Nizar"
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

bobs_milkshake = MilkShake.new "Bob"
bobs_milkshake.add_ingredient(banana)
bobs_milkshake.add_ingredient(chocolate_chips)
bobs_milkshake.add_ingredient(vanilla_ice)
bobs_milkshake.add_ingredient(whip_cream)
#puts nizars_milkshake.shake_info

bill1 = Shakeshack.new
bill1.add_shake(nizars_milkshake)
bill1.add_shake(bobs_milkshake)

bill1.shakeshack_bill
