let store = {customers: [], restaurants: [], reviews: []}


const Review = (function createReview(){
  var id = 0;

  return class {
    constructor(name, restaurant_id, customer_id){
      this.name = name;
      this.customer_id = customer_id;
      this.restaurant_id = restaurant_id;
      this.id = ++id;
      store.reviews.push(this);
    }

    restaurant(){
      return store.restaurants.filter((restaurant) => {
        return restaurant.id === this.restaurant_id;
      })
    }

    customer(){
      return store.customers.filter((customer) => {
        return customer.id === this.customer_id;
      })
    }
  }
}())


