import 'package:flutter/material.dart';

import 'color_utils.dart';
import 'navigation_utils.dart';

class ProgressDialogUtils {
  // static final ProgressDialogUtils _instance = ProgressDialogUtils.internal();
  // static bool _isLoading = false;
  //
  // ProgressDialogUtils.internal();
  //
  // factory ProgressDialogUtils() => _instance;
  //
  // static BuildContext? _context;
  //
  // static void dismissProgressDialog() {
  //   if (_isLoading && _context != null) {
  //     // Navigator.of(_context!).pop();
  //     locator<NavigationUtils>().pop();
  //     _isLoading = false;
  //   }
  // }
  //
  // static bool get isProgressLoading => _isLoading;
  //
  // static void showProgressDialog(BuildContext context,
  //     {bool? isDismissible}) async {
  //   _context = context;
  //   _isLoading = true;
  //
  //   await showDialog(
  //       context: locator<NavigationUtils>().globalStateKey?.currentContext ??
  //           context,
  //       useRootNavigator: true,
  //       builder: (context) {
  //         return SimpleDialog(
  //           elevation: 0.0,
  //           backgroundColor: Colors.transparent,
  //           children: <Widget>[
  //             Material(
  //               type: MaterialType.transparency,
  //               child: WillPopScope(
  //                 onWillPop: () async => isDismissible ?? false,
  //                 child: Center(
  //                     child: Container(
  //                   width: 120.0,
  //                   height: 120.0,
  //                   decoration: const ShapeDecoration(
  //                     color: Colors.white,
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.all(
  //                         Radius.circular(8.0),
  //                       ),
  //                     ),
  //                   ),
  //                   child: const Center(
  //                     child: CircularProgressIndicator(
  //                       valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
  //                     ),
  //                   ),
  //                 )),
  //               ),
  //             )
  //           ],
  //         );
  //       });
  // }
  //


  void showLoadingDialog({required BuildContext context,
    bool idShow = true,
  }) {
    idShow
        ? Future.delayed(const Duration(seconds: 0), () {
      showDialog(
          context: context,
          barrierColor: Colors.black.withOpacity(0.40),
          barrierDismissible:
          true, // set to false if you want to force a rating
          builder: (context) {
            return const Center(
              child: CircularProgressIndicator(color: tahitiGold,),
            );
          });
    })
        : print("");
  }

  void hideLoadingDialog({required BuildContext context}) {
    Navigator.pop(context, false);
  }


}


