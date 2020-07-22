require_relative '../config/environment.rb'

steven = User.new("Steven")
roan = User.new("Roan")

cake = Recipe.new("cake")
cookies = Recipe.new("cookies")
pie = Recipe.new("Pie")
croissant = Recipe.new("Croissant")

steven.add_recipe_card(cake, "07/22/2020", 9)
steven.add_recipe_card(cookies, "05/23/2014", 7)
steven.add_recipe_card(pie, "08/04/2010", 4)
steven.add_recipe_card(croissant, "07/14/2020", 8)

roan.add_recipe_card(croissant, "05/05/2020", 12)
roan.add_recipe_card(pie, "05/14/2014", -4)
roan.add_recipe_card(cookies, "05/14/20", 2)

sugar = Ingredient.new("Sugar")
salt = Ingredient.new("salt")
flour = Ingredient.new("flour")
yeast = Ingredient.new("yeast")

cake.add_ingredients([sugar, salt, flour, yeast])
cookies.add_ingredients([yeast, flour, sugar])
pie.add_ingredients([yeast, salt, sugar])

steven.declare_allergy(sugar)
steven.declare_allergy(yeast)

roan.declare_allergy(sugar)
roan.declare_allergy(flour)
roan.declare_allergy(salt)

Ingredient.most_common_allergen

# binding.pry
