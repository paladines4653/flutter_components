import 'package:flutter/material.dart';

import 'package:fl_components/screens/_screens.dart';
import 'package:fl_components/models/_models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption( route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home, ),
    MenuOption(
      route: 'alert',
      name: 'Alertas - Android & IOS',
      screen: const AlertScreen(),
      icon: Icons.notifications_active,
    ),
    MenuOption(
      route: 'card',
      name: 'Cards, Custom Widgets & Images',
      screen: const CardScreen(),
      icon: Icons.credit_card,
    ),
    MenuOption(
      route: 'listview1',
      name: 'Listview 1 - Basic',
      screen: const Listview1Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview 2 - Separated',
      screen: const Listview2Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Circle Avatar - ',
      screen: const AvatarScreen(),
      icon: Icons.face,
    ),
    MenuOption(
      route: 'animated',
      name: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_rounded,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Text Inputs',
      screen: const InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOption(
      route: 'slider',
      name: 'Slider & Checks',
      screen: const SliderScreen(),
      icon: Icons.slow_motion_video,
    ),
    MenuOption(
      route: 'listviewbuilder',
      name: 'InfiniteScroll & Pull to Refresh',
      screen: const ListViewBuilderScreen(),
      icon: Icons.build_circle_outlined,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   '404': (BuildContext context) => const AlertScreen(),
  // };

  static Route<dynamic> onGeneralRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
