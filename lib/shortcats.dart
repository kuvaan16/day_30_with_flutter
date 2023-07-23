import 'package:day_30_with_flutter/model_shortcuts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShortcutsView extends StatelessWidget {
  const ShortcutsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.builder(
        itemCount: shortcutslist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == shortcutslist.length - 1) {
            return Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(40, 230, 81, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      shortcutslist[index].img,
                      width: 30,
                      color: Colors.orange[900],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    shortcutslist[index].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: .3,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(17),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(40, 230, 81, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      shortcutslist[index].img,
                      width: 30,
                      color: Colors.orange[900],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    shortcutslist[index].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: .3,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
