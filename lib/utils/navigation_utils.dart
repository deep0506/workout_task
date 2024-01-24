
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../ui/home/home_screen.dart';
import '../ui/splash/splash_screen.dart';
import 'constants/navigation_route_constants.dart';

class NavigationUtils {
  GlobalKey<NavigatorState> globalStateKey = GlobalKey();

  Route<dynamic> generateRoute(RouteSettings settings) {
    final Map<String, dynamic>? args =
        settings.arguments as Map<String, dynamic>?;

    // final isDocument = settings.name?.contains(routeDocuments) ?? false;
    // if (isDocument) {
    //   // http://192.168.1.10:8080/#/documents/24_95e550da-3ab2-44aa-a0ec-17559b3f93ed
    //   String? code = settings.name?.substring(
    //       settings.name!.lastIndexOf("/") + 1, settings.name?.length);
    //   return CustomRoute(
    //     settings: RouteSettings(name: routeDocuments + '/' + code!),
    //     builder: (_) => Documents(
    //       code: code,
    //     ),
    //   );
    // }

    // if (kIsWeb &&
    //     !authenticatedRoutes(settings.name) &&
    //     getString(prefToken) == '') {
    //   return CustomRoute(
    //     ///TODO Change route with login screen
    //     settings: const RouteSettings(name: routeHome),
    //     builder: (_) => const SplashScreen(),
    //   );
    // }

    switch (settings.name) {
      case routeSplash:
        return CustomRoute(
            settings: const RouteSettings(name: routeSplash),
            builder: (_) =>  SplashScreen());
      case routeHome:
        return CustomRoute(
            settings: const RouteSettings(name: routeHome),
            builder: (_) => HomeScreen());
      default:
        return _errorRoute(" Unimplemented...");
    }
  }

  Route<dynamic> _errorRoute(String message) {
    return CustomRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: Center(child: Text(message)));
    });
  }

  void pushReplacement(String routeName, {Object? arguments}) {
    globalStateKey.currentState
        ?.pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic>? push(String routeName, {Object? arguments}) {
    return globalStateKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }

  void pop({dynamic args}) {
    globalStateKey.currentState?.pop(args);
  }

  Future<dynamic>? pushAndRemoveUntil(String routeName, {Object? arguments}) {
    return globalStateKey.currentState?.pushNamedAndRemoveUntil(
        routeName, (route) => false,
        arguments: arguments);
  }

  Future<dynamic>? pushAndRemoveUntilRoute(String routeName,

      ///TODO Change it to home screen
      {Object? arguments,
      String? lastRoute = routeSplash}) {
    // {Object? arguments, String? lastRoute = routeHome}) {
    return globalStateKey.currentState?.pushNamedAndRemoveUntil(
        routeName, ModalRoute.withName(lastRoute ?? "/"),
        arguments: arguments);
  }

  bool authenticatedRoutes(routeName) {
    switch (routeName) {
      // case routeLoginOtp:
      //   return true;
      // case routeLoginWithPassword:
      //   return true;
      // case routeCreateNewPassword:
      //   return true;
      // case routeOtpVerification:
      //   return true;
      case routeSplash:
        return true;
      // case routeDocuments:
      //   return true;
      default:
        return false;
    }
  }
}

// Custom Page Route to support fade in transition for web and default Material route for mobile
class CustomRoute<T> extends MaterialPageRoute<T> {
  CustomRoute(
      {required Widget Function(BuildContext context) builder,
      RouteSettings? settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (!kIsWeb) {
      return super
          .buildTransitions(context, animation, secondaryAnimation, child);
    }
    return FadeTransition(opacity: animation, child: child);
  }

  @override
  Duration get transitionDuration =>
      !kIsWeb ? super.transitionDuration : const Duration(milliseconds: 100);
}
