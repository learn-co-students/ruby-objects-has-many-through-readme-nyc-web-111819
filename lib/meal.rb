class Meal

    attr_accessor :waiter, :customer, :total, :tip

    def initialize(waiter, customer, total, tip)
        @waiter = waiter
        @customer = customer 
        @otal = total
        @tip = tip
        @@all << self
    end 

    def self.all
        @@all
    end 


end