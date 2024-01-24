import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:workout_task/utils/constants/navigation_route_constants.dart';
import 'package:workout_task/utils/utils.dart';

import '../../di/locator.dart';
import '../../utils/color_utils.dart';
import '../../widgets/logo.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        final timer = Timer(const Duration(seconds: 3), () async {

          navigationService.pushReplacement(routeHome);
        });
        return timer.cancel;
      },
      [],
    );

    return  Material(
      color: white,
      child: SafeArea(
        child: SizedBox(
            height: Utils.getHeight(context),
            width: Utils.getWidth(context),
            child: const Center(child: Logo())),
      ),
    );
  }
}
