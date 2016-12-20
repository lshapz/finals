class Restaurant
  
  attr_accessor :name, :id 

  @@all = []
  # id = 0
  def initialize(name)
    self.name = name
    # self.id = ++id 
    @@all << self 
  end

  def self.find_by_name(input)
    found = Restaurant.all.select do |restaurant|
      restaurant.name == input
    end
    found
  end

  def self.all
    @@all
  end

  def customers
    cust_list = self.reviews.each do |review|
      Customer.find_by_name(review.cust_name)
    end
    cust_list
  end

  def reviews
    rev_list = Review.all.select do |review| 
      review.rest_name == self.name
    end
    rev_list 
  end 

end
