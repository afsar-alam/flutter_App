import 'package:flutter/material.dart';
import 'package:stall/utils/constants.dart';
import 'package:stall/page/components/header.dart';
import 'package:stall/page/components/location.dart';
import 'package:stall/page/components/reviews.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Header(),
        const Divider(
          height: 16,
          thickness: 2,
          indent: 20,
          endIndent: 0,
          color: Colors.deepOrange,
        ),
        Location()
      ],
    );
  }
}
