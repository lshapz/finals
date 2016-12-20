const Customer = (function createCustomer(){
  var id = 0;

  return class {
    constructor(name){
      this.name = name;
      this.id = ++id;
      store.customers.push(this);
    }

    reviews(){
      return store.reviews.filter((review) => {
        return review.customer_id === this.id;
      })
    }

    add_review(text, restaurant_name){
      let filtered = store.restaurants.filter((restaurant=>{
        return restaurant.name === restaurant_name
      }))
      if (filtered.length > 0){
        new Review(text, filtered[0].id, this.id)
      }
      else {
        // debugger
        let rest = new Restaurant(restaurant_name)
        new Review(text, rest.id, this.id)
      }
    }

    add_restaurant(name){
      let filtered = store.restaurants.filter((restaurant)=>{
        return restaurant.name === name
      })
      if (filtered.length === 0){
        new Restaurant(name)
      }
    }

  }
}())

Customer.prototype.all = () => {
  return store.customers
}



