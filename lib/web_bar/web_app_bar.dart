import 'package:flutter/material.dart';
import 'package:flutter_deployment_issue/router/route_name.dart';
import 'package:go_router/go_router.dart';

class WebAppBar extends StatelessWidget {
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
            child: Text("One")),
        TextButton(
            onPressed: () {
              context.goNamed(twoRoute);
            },
            child: Text("Two")),
        TextButton(
            onPressed: () {
              context.goNamed(threeRoute);
            },
            child: Text("Three")),
        TextButton(
            onPressed: () {
              context.goNamed(fourRoute);
            },
            child: Text("Four")),
        TextButton(
            onPressed: () {
              context.goNamed(fiveRoute);
            },
            child: Text("Five")),
        TextButton(
            onPressed: () {
              context.goNamed(sixRoute);
            },
            child: Text("Six")),
      ],
    );
  }
}
