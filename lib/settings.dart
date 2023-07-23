import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifications"),
                Row(
                  children: [
                    Text(
                      "Disabled",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.orange[900],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 20,
            color: Color.fromARGB(162, 238, 238, 238),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Language"),
                Row(
                  children: [
                    Text(
                      "English",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.orange[900],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            thickness: 2,
            color: Color.fromARGB(162, 238, 238, 238),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Country"),
                Row(
                  children: [
                    Text(
                      "Iraq",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.orange[900],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 20,
            color: Color.fromARGB(162, 238, 238, 238),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Log in"),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.orange[900],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 20,
            color: Color.fromARGB(162, 238, 238, 238),
          ),
        ],
      ),
    );
  }
}
