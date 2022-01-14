import 'dart:math';

class RestaurantSelector{
  List restaurants = [
    "McDonald's",
    "Barbeque Nation",
    "KFC",
    "Giani",
    "Belgian Waffles",
    "Costa Coffee",
    "Starbucks",
    "Domino's"
  ];

  List logos = [
    "mcdonalds.png",
    "bbq.png",
    "kfc.png",
    "giani.jpeg",
    "belgianwaffle.jpeg",
    "costacoffee.png",
    "starbucks.png",
    "dominos.svg"
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
    String logo = logos[index];
    return {"index": index, "restaurant": restaurant, "logo": logo};
  }

}