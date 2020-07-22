class Ingredient
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def count_of_users_allergic_to
        allergy = Allergy.all.find_all {|allergy| allergy.ingredient == self}
        allergy.map {|allergy| allergy.user}.count
    end

    def self.most_common_allergen
        self.all.max_by {|ingredient|ingredient.count_of_users_allergic_to}
    end
end

