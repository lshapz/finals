const Restaurant = (function createRestaurant(){
  var id = 0;

  return class {
    constructor(name){
      this.name = name;
      this.id = ++id;
      store.restaurants.push(this);

    }
    reviews(){
      return store.reviews.filter((review) => {
        return review.restaurant_id === this.id;
      })
    }
    customers(){
      debugger
      let ids = this.reviews().map((review)=>{
        return review.customer_id
      })

      return ids.map((cust_id)=>{
            return store.customers.filter((customer)=>{
              return customer.id == cust_id
            })[0];
          })

    }

  }
}())

