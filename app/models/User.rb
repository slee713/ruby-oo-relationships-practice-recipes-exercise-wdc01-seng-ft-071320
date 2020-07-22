class User
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipe_cards
        RecipeCard.all.find_all {|recipecard| recipecard.user == self}
    end


    def recipes
        self.recipe_cards.map {|recipecard| recipecard.recipe}
    end

    def add_recipe_card(recipe, date ,rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        allergy = Allergy.all.find_all {|allergy| allergy.user == self}
        allergy.map {|allergy| allergy.ingredient}
    end

    def top_three_recipes
        recipe_card = self.recipe_cards.max_by(3) do |recipe_card|
            recipe_card.rating
        end
        recipe_card.map {|recipecard| recipecard.recipe}
    end

    def most_recent_recipe
        self.recipes.last
    end

    # def safe_recipes
    #     self.recipes.find_all do |recipe|
           
    #         self.allergens.each do

    #     end
    # end

    

end


# User#most_recent_recipe should return the recipe most recently added to the user's cookbook.