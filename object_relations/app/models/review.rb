class Review
    attr_accessor :name, :id, :rest_name, :cust_name

  @@all = []
  # id = 0

  def initialize(name, rest_name, cust_name)
    self.name = name
    self.rest_name = rest_name
    self.cust_name = cust_name
    # self.id = ++id 
    @@all << self 
  end

  def self.all
    @@all
  end

  def customer
    cust = Customer.find_by_name(self.cust_name)
  end

  def restaurant 
    rest = Restaurant.find_by_name(self.rest_name)
  end


end

