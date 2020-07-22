require_relative '../config/environment.rb'

steven = User.new("Steven")
roan = User.new("Roan")
phil = User.new("Phil")

cake = Recipe.new("cake")
cookies = Recipe.new("cookies")
pie = Recipe.new("Pie")
croissant = Recipe.new("Croissant")
fruit_tart = Recipe.new("Fruit Tart")

steven.add_recipe_card(cake, "07/22/2020", 9)
steven.add_recipe_card(cookies, "05/23/2014", 7)
steven.add_recipe_card(pie, "08/04/2010", 4)
steven.add_recipe_card(croissant, "07/14/2020", 8)

phil.add_recipe_card(cake, "05/14/2020", 10)

roan.add_recipe_card(cake, "05/05/2020", 12)
roan.add_recipe_card(pie, "05/14/2014", -4)
roan.add_recipe_card(cookies, "05/14/2020", 2)
roan.add_recipe_card(fruit_tart, "05/14/2020", 10)

sugar = Ingredient.new("Sugar")
salt = Ingredient.new("salt")
flour = Ingredient.new("flour")
yeast = Ingredient.new("yeast")
fruit = Ingredient.new("fruit")


cake.add_ingredients([sugar, salt, flour, yeast])
cookies.add_ingredients([yeast, flour, sugar])
pie.add_ingredients([yeast, salt, sugar])
fruit_tart.add_ingredients([fruit, sugar])

steven.declare_allergy(sugar)

roan.declare_allergy(sugar)
roan.declare_allergy(salt)

# print Recipe.all 
# p Recipe.most_popular
# print cake.users
# print cake.ingredients 
# print cake.allergens

# p Allergy.all

# print User.all
# print steven.recipes
# print roan.allergens
# print steven.top_three_recipes
# p steven.most_recent_recipe

# p RecipeCard.all.count

# print Ingredient.all
# p Ingredient.most_common_allergen

# p RecipeIngredient.all



