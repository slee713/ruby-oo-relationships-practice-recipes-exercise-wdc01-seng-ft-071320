require 'date'
class RecipeCard
    attr_reader :user, :recipe, :date, :rating
    @@all = []

    def initialize(user, recipe, date, rating)
        @user = user
        @recipe = recipe
        @date = date
        @rating = rating.clamp(0,10)
        @@all << self
    end

    def self.all
        @@all
    end

end