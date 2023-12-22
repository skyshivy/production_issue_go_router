import 'package:flutter/material.dart';
import 'package:flutter_deployment_issue/router/route_name.dart';
import 'package:go_router/go_router.dart';

class WebAppBar extends StatelessWidget {
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      height: 70,
      child: buttons(context),
    );
  }

  Widget buttons(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {
              context.goNamed(oneRoute);
            },
            child: Text(
              "One",
              style: TextStyle(fontWeight: FontWeight.bold, color: color),
            )),
        TextButton(
          onPressed: () {
            context.goNamed(twoRoute);
          },
          child: Text("Two",
              style: TextStyle(fontWeight: FontWeight.bold, color: color)),
        ),
        TextButton(
            onPressed: () {
              context.goNamed(threeRoute);
            },
            child: Text("Three",
                style: TextStyle(fontWeight: FontWeight.bold, color: color))),
        TextButton(
            onPressed: () {
              context.goNamed(fourRoute);
            },
            child: Text("Four",
                style: TextStyle(fontWeight: FontWeight.bold, color: color))),
        TextButton(
            onPressed: () {
              context.goNamed(fiveRoute);
            },
            child: Text("Five",
                style: TextStyle(fontWeight: FontWeight.bold, color: color))),
        TextButton(
            onPressed: () {
              context.goNamed(sixRoute);
            },
            child: Text("Six",
                style: TextStyle(fontWeight: FontWeight.bold, color: color))),
      ],
    );
  }
}
