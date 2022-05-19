import 'package:flutter/material.dart';
import 'package:flutter_widgets/models/menu_option.dart';
import 'package:flutter_widgets/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        nombre: 'Home',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listview1',
        nombre: 'List view 1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        nombre: 'List view 2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    // for (int index = 0; index < menuOptions.length; index++) {
    //   routes.addAll({ menuOptions[index].route: (context) => menuOptions[index].screen });
    // }

    for (final option in menuOptions) {
      routes.addAll({option.route: (context) => option.screen});
    }

    return routes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }

  // static final Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const ListView1Screen(),
  //   'listview2': (context) => const ListView2Screen(),
  // };
}
