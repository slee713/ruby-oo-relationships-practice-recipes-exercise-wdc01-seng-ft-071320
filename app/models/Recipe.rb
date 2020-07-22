class Recipe

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        self.all.max_by {|recipe| recipe.users.count}
    end

    def users
        recipe_card = RecipeCard.all.select {|recipecard| recipecard.recipe == self}
        recipe_card.map {|recipecard| recipecard.user}
    end

    def ingredients
        recipe_ingredients = RecipeIngredient.all.select {
            |recipeingredient| recipeingredient.recipe == self}
        recipe_ingredients.map {|recipe_ing| recipe_ing.ingredient}
    end

    def allergens
        self.ingredients.find_all {|ingredient| Allergy.ingredient.include?(ingredient)}
    end

    def add_ingredients(array_ingredients)
        array_ingredients.each {|ingredient| RecipeIngredient.new(self, ingredient)} 
    end

end

# Recipe#allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.