import 'package:flutter/cupertino.dart';
import 'package:news_app/ui/news/news.dart';
import 'package:page_transition/page_transition.dart';

abstract class AppNavigator {

  static Widget route = const SizedBox();

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/news':
        return PageTransition(
          child: AppNavigator.route,
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
        break;
      case '/profile':
        return PageTransition(
          child: AppNavigator.route,
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
        break;
      default:
        return null;
    }
  }
}