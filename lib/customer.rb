class Customer
    attr_accessor :age, :name
	attr_reader

    @@all = []

	def initialize (name, age)
        @name = name
        @age = age
        @@all << self
    end
    
    def self.all
        @@all
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select {|i| i.customer == self}
    end

    def waiters
        meals.map {|i| i.waiter}
    end

end