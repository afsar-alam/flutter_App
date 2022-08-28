import 'package:flutter/material.dart';
import 'package:stall/utils/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Container(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: AssetImage('images/stall.jpg'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Nisa Hut",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        color: Colors.black54,
                        size: 24.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                      Text(
                        "9 am - 4 pm",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Text(
            "By Neha & Sisters",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "+91 7788778655",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Chinese food, fast food, Rolls, Spicy food, Fried food, Chowmine & more",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
