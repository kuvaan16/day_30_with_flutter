import 'package:day_30_with_flutter/poprest.dart';
import 'package:day_30_with_flutter/profile.dart';
import 'package:day_30_with_flutter/search.dart';
import 'package:day_30_with_flutter/shortcats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(126, 255, 224, 178),
        leadingWidth: 150,
        leading: Container(
          margin: const EdgeInsets.only(top: 16.0, left: 15),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivering to",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Grand Level",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      FontAwesomeIcons.chevronDown,
                      color: Colors.orange,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(126, 255, 224, 178),
            padding: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey there!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                          "Log in or create an account for a\nfaster ordering experience."),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.orange[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Text("Sign up"),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/img/Food-Delivery.png",
                  width: 170,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 155,
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(197, 238, 238, 238),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Food",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, letterSpacing: .5),
                      ),
                      Image.asset(
                        "assets/img/hamburger.png",
                        width: 150,
                        height: 110,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(197, 238, 238, 238),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "talabat\nmart",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, letterSpacing: .5),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Image.asset(
                            "assets/img/fruit.png",
                            width: 80,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 10, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(197, 238, 238, 238),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Coffee",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, letterSpacing: .5),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Image.asset(
                            "assets/img/coffee.png",
                            width: 50,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  "Shortcuts",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: .3,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ShortcutsView(),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 180,
            width: 200,
            child: AnotherCarousel(
              images: [
                ClipRRect(
                  child: Image.asset("assets/img/1.png"),
                  borderRadius: BorderRadius.circular(20),
                ),
                ClipRRect(
                  child: Image.asset("assets/img/2.png"),
                  borderRadius: BorderRadius.circular(20),
                ),
                ClipRRect(
                  child: Image.asset("assets/img/3.png"),
                  borderRadius: BorderRadius.circular(20),
                ),
                ClipRRect(
                  child: Image.asset("assets/img/4.png"),
                  borderRadius: BorderRadius.circular(20),
                ),
                ClipRRect(
                  child: Image.asset("assets/img/5.png"),
                  borderRadius: BorderRadius.circular(20),
                ),
                ClipRRect(
                  child: Image.asset("assets/img/6.png"),
                  borderRadius: BorderRadius.circular(20),
                ),
              ],
              dotColor: Color.fromARGB(75, 158, 158, 158),
              dotBgColor: Colors.transparent,
              dotIncreasedColor: Color.fromARGB(255, 255, 119, 0),
              indicatorBgPadding: 5,
              boxFit: BoxFit.cover,
              animationDuration: Duration(milliseconds: 500),
              animationCurve: Curves.linear,
              dotSize: 8.0,
              dotIncreaseSize: 1.1,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  "Popular restaurants nearby",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: .3,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          PopularRest(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
