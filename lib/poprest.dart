import 'package:day_30_with_flutter/model_poprest.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PopularRest extends StatelessWidget {
  const PopularRest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        itemCount: poprestlist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == poprestlist.length - 1) {
            return Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    child: Image.asset(
                      poprestlist[index].img,
                      width: 90,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    poprestlist[index].title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      letterSpacing: .3,
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.grey[400],
                        size: 18,
                      ),
                      Text(
                        " " + poprestlist[index].time + " mins",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: .3,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    child: Image.asset(
                      poprestlist[index].img,
                      width: 90,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    poprestlist[index].title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      letterSpacing: .3,
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.grey[400],
                        size: 18,
                      ),
                      Text(
                        " " + poprestlist[index].time + " mins",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: .3,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
