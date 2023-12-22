import 'package:flutter/material.dart';
import 'package:flutter_deployment_issue/Screens/screen_five.dart';
import 'package:flutter_deployment_issue/Screens/screen_four.dart';
import 'package:flutter_deployment_issue/Screens/screen_one.dart';
import 'package:flutter_deployment_issue/Screens/screen_six.dart';
import 'package:flutter_deployment_issue/Screens/screen_three.dart';
import 'package:flutter_deployment_issue/Screens/screen_two.dart';
import 'package:flutter_deployment_issue/router/route_name.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: oneRoute,
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: shellRouteIndex,
      branches: [
        _oneScreenRoute(),
        _twoScreenRoute(),
        _threeScreenRoute(),
        _fourScreenRoute(),
        _fiveScreenRoute(),
        _sixScreenRoute(),
      ],
    ),
  ],
  errorPageBuilder: (context, state) {
    return MaterialPage(child: errorWidget(context, state));
  },
);

StatefulShellBranch _oneScreenRoute() {
  return StatefulShellBranch(
    navigatorKey: _sectionNavigatorKey,
    routes: <RouteBase>[
      GoRoute(
        path: oneRoute,
        builder: (context, state) {
          return ScreenOne();
        },
      ),
    ],
  );
}

StatefulShellBranch _twoScreenRoute() {
  return StatefulShellBranch(
    routes: <RouteBase>[
      GoRoute(
        path: twoRoute,
        builder: (context, state) {
          return ScreenTwo();
        },
      ),
    ],
  );
}

StatefulShellBranch _threeScreenRoute() {
  return StatefulShellBranch(
    routes: <RouteBase>[
      GoRoute(
        path: threeRoute,
        builder: (context, state) {
          return ScreenThree();
        },
      ),
    ],
  );
}

StatefulShellBranch _fourScreenRoute() {
  return StatefulShellBranch(
    routes: <RouteBase>[
      GoRoute(
        path: fourRoute,
        builder: (context, state) {
          return ScreenFour();
        },
      ),
    ],
  );
}

StatefulShellBranch _fiveScreenRoute() {
  return StatefulShellBranch(
    routes: <RouteBase>[
      GoRoute(
        path: fiveRoute,
        builder: (context, state) {
          return ScreenFive();
        },
      ),
    ],
  );
}

StatefulShellBranch _sixScreenRoute() {
  return StatefulShellBranch(
    routes: <RouteBase>[
      GoRoute(
        path: sixRoute,
        builder: (context, state) {
          return ScreenSix();
        },
      ),
    ],
  );
}

Widget errorWidget(BuildContext context, GoRouterState state) {
  return Scaffold(
      body: Container(
    color: Colors.red,
  ));
}

Widget shellRouteIndex(BuildContext context, GoRouterState state,
    StatefulNavigationShell navigationShell) {
  print("Selected index must be===== ${navigationShell.currentIndex}");

  print("SKY state.name  = ${state.fullPath}");

  return navigationShell;
}
