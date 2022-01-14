import 'dart:math';

class RestaurantSelector{
  List restaurants = [
    "McDonald's",
    "Pop's Kitchen",
    "KFC",
    "Giani",
    "Belgian Waffles",
    "Costa Coffee",
    "Starbucks",
    "Domino's"
  ];

  int indexValue = 0;

  RestaurantSelector();

  List getRestaurants() {
    return restaurants;
  }
  Map generateRandomIndex() {
    var random = Random();
    int index = random.nextInt(restaurants.length);
    String restaurant = restaurants[index];
    return {"index": index, "restaurant": restaurant};
  }

}