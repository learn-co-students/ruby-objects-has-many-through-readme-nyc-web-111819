class Waiter
	attr_accessor :name, :years
	attr_reader

    @@all = []

	def initialize (name, years)
        @name = name
        @years = years
        @@all << self
    end
    
    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select {|i| i.waiter == self}
    end

    def best_tipper
        best_t = meals.max {|meal_a, meal_b| meal_a.tip <=> meal_b.tip}
        best_t.customer
    end
end