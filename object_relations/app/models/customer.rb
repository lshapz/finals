class Customer
  
  attr_accessor :name, :id 

  @@all = []
  # id = 0

  def initialize(name)
    self.name = name
    # self.id = ++id 

    @@all << self 
  end

  def add_review(text, restaurant)
    if Restaurant.find_by_name(restaurant)
      rest = Restaurant.find_by_name(restaurant)
    else
      rest = Restaurant.new(restaurant)
    end 

    review = Review.new(text, rest[0].name, self.name)
  end 

  def reviews
    review_array = Review.all.select do |review|
      review.cust_name == self.name 
    end
    # returns the objects - if you want just the text you'd map review_array to just return review.text
  end

  def add_restaurant(name)
    # why would this exist without a review? no assoc are created
    if Restaurant.find_by_name(name)
      rest = Restaurant.find_by_name(name)
    else
      rest = Restaurant.new(name)
    end 
  end 

  def self.all
    @@all
  end

  def restaurants 
    rest_array = self.reviews.map do |hashes|
      hashes.rest_name
    end
    rest_array_of_objects = rest_array.map do |name|
      Restaurant.find_by_name(name)
    end
    rest_array_of_objects.flatten
  end

  def self.find_by_name(input)
    found = Customer.all.select do |customer|
      customer.name == input
    end
    found 
  end

end