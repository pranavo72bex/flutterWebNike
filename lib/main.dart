import 'dart:ui';

import 'package:animationstutorial/constants.dart';
import 'package:animationstutorial/startRating.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double rating = 3.5;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ListView(
      children: [
        Container(
          color: Color(0xfffafafa),
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "Assets/images/logo.png",
                height: height * 0.04,
                width: width * 0.04,
              ),
              Container(
                height: height * 0.08,
                width: width * 0.7,
                decoration: BoxDecoration(
                    color: Colors.amber[900],
                    borderRadius: BorderRadius.circular(34)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("What's Now", style: Contstants.rowTextstyle),
                    Text("Men", style: Contstants.rowTextbold),
                    Text("Women", style: Contstants.rowTextstyle),
                    Text("Kids", style: Contstants.rowTextstyle),
                    Text("Personalize", style: Contstants.rowTextstyle),
                    Text("Collections", style: Contstants.rowTextstyle),
                    Text("Sales", style: Contstants.rowTextstyle),
                    IconButton(
                        icon: Icon(
                          Icons.search,
                          size: height * 0.04,
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                    size: height * 0.04,
                  ),
                  onPressed: () {})
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nike Lebron 17",
                  style: TextStyle(
                      fontSize: width * 0.03, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "The leBron 17 LMTD features\na large Max Air unit in the\nheel and zoom Air curshioning for extra comfort.",
                  style: TextStyle(fontSize: width * 0.012),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "Knit material wrap your feet\nfor lightweight support so you\ncan make quick powerful maoves\nlike a champ",
                  style: TextStyle(fontSize: width * 0.012),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "Assets/images/shoes1.png",
                  height: height * 0.34,
                  width: width * 0.4,
                ),
                Image.asset(
                  "Assets/images/shoes2.png",
                  height: height * 0.34,
                  width: width * 0.4,
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: width * 0.08,
            ),
            StarRating(
              rating: rating,
              onRatingChanged: (rating) => setState(() => this.rating = rating),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Container(
                padding: EdgeInsets.only(left: 20, top: 5),
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xfffafafa),
                ),
                child: Text("Add To Basket",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            SizedBox(
              width: width * 0.02,
            ),
            Text(
              "EU 540",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        )
      ],
    ));
  }
}
