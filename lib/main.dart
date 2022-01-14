import 'package:flutter/material.dart';
import "package:flutter_practice_projects/restaurant_list.dart";

void main() => runApp( MaterialApp(
  home: Home()
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String restaurant = "KFC";
  String logo = "kfc.png";

  RestaurantSelector restaurantSelector = RestaurantSelector();
  // List restaurants =
  void updateIndexValue() {

    Map restaurantData = restaurantSelector.generateRandomIndex();
    setState(() {
      restaurant = restaurantData["restaurant"];
      logo = restaurantData["logo"];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[200],
        title: Text(
            "DAY 0",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.grey[700],
          ),
        ),
      ),
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Random restaurant selector",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w100,
                      color: Colors.grey[900]
                  ),
                ),
                SizedBox(height: 16.0,),
                Image.asset("assets/$logo"),
                SizedBox(height: 16.0,),
                Text("$restaurant",
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[900]
                  ),
                ),
                SizedBox(height: 8.0,),
                ElevatedButton.icon(
                  onPressed: () {
                    updateIndexValue();
                  },
                  label: Text("Choose"),
                  icon: Icon(Icons.autofps_select),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );;
  }
}


