import 'package:day_30_with_flutter/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ionicons/ionicons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Get.to(() => Settings(), transition: Transition.rightToLeft);
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Color.fromARGB(163, 255, 224, 178),
                          child: Text(
                            "H",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi Guest",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/img/iraq.png",
                                    width: 15,
                                    height: 15,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "Iraq",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.settings_outlined)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[200],
            ),
            InkWell(
              onTap: () {},
              child: parent(
                  Icon(
                    Icons.article_outlined,
                  ),
                  "Your orders"),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {},
              child: parent(
                  Icon(
                    Icons.discount_outlined,
                  ),
                  "Offers"),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {},
              child: parent(
                  Icon(
                    Icons.notifications_none,
                  ),
                  "Notifications"),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {},
              child: parent(
                  Icon(
                    Ionicons.help_buoy_outline,
                  ),
                  "Get help"),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {},
              child: parent(
                  Icon(
                    Icons.info_outline,
                  ),
                  "About app"),
            ),
          ],
        ),
      ),
    );
  }
}

Widget parent(Icon icon, String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 20),
    child: Row(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(7),
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: icon,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            letterSpacing: .3,
          ),
        ),
      ],
    ),
  );
}
