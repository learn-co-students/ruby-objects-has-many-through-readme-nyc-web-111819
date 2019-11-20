class Waiter

    attr_reader :name, :yrs_experience

    @@all = []

    def initialize(name, yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        @@all << self
    end 

    def self.all   
        @@all
    end 

    def new_meal(customer, total, tip=0)
        Meal.new(customer, self, total, tip)
    end 

    def meals
        Meal.all.select do |meal|
            meal.waiter == self
        end 
    end 

    def best_tipper
        best_tip = 0
        best_tipper = nil
        meals.each do |meal|
            if meal.tip > best_tip
                best_tip = meal.tip
                best_tipper = meal.customer
            end 
        end 
        best_tipper
    end 

end