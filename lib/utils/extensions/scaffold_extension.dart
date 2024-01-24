import 'package:flutter/material.dart';

import '../constants/app_constant.dart';

extension ScaffoldExtension on Widget {
  Scaffold baseScaffold({required BuildContext context}) {
    getScreenSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: this,
      ),
    );
  }

  Dialog dialogContainer() {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 20.0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 350,
        padding: const EdgeInsets.all(20.0),
        child: this,
      ),
    );
  }
}
