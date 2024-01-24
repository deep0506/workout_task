import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:workout_task/utils/extensions/size_extension.dart';

import 'color_utils.dart';
import 'constants/color_constant.dart';
import 'constants/fontsize_constant.dart';

Future<bool?> displayToast(String message) {
  return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: darkPrimaryColor,
      textColor: Colors.white,
      fontSize: fontSize14);
}

//
// Future<bool?> errorToast(String message) {
//   return Fluttertoast.showToast(
//       msg: message,
//       // toastLength: Toast.LENGTH_SHORT,
//       // gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 2,
//       backgroundColor: Colors.red,
//       textColor: white,
//       fontSize: fontSize14);
// }
//
// SnackBar displaySnackBar({required String message}) {
//   return SnackBar(
//     content: Text(
//       message,
//       style: const TextStyle(color: Colors.white, fontSize: fontSize14),
//     ),
//     duration: const Duration(seconds: 2),
//     backgroundColor: primaryColor,
//   );
// }
//
void flutterToast(BuildContext context, String? message,
    {int time = 2, bool isError = false}) {
  late final FToast fToast;
  fToast = FToast();
  fToast.init(context);
  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
    margin: const EdgeInsets.only(bottom: 30),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: isError ? redShade : successColor,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isError != true) ...[
          Icon(
            Icons.check,
            color: Colors.white,
            size: context.constantSize(20.c, 24.c, 24.c),
          ),
          const Gap(10),
        ],
        Text(
          message ?? "",
          style: TextStyle(
              fontSize: context.fontSize(14.c, 16.c), color: Colors.white),
        ),
      ],
    ),
  );
  fToast.showToast(
    child: toast,
    gravity: ToastGravity.BOTTOM,
    toastDuration: Duration(seconds: time),
  );
}

// void customAlertDialog(
//     {required BuildContext context,
//     required Widget body,
//     String title = "",
//     double width = 404}) {
//   showDialog(
//       context: context,
//       builder: (BuildContext context) => AlertDialog(
//           contentPadding: EdgeInsets.zero,
//           shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(16.0))),
//           content: SizedBox(
//             width: min(double.infinity, width),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(18, 10, 14, 10),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(4.0),
//                         child: Text(title,
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: context.fontSize(18.sp))),
//                       ),
//                       InkWell(
//                         onTap: () => Navigator.pop(context),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Utils.svgIcon(icClose,
//                               width: context.constantSize(24.c),
//                               height: context.constantSize(24.c)),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 divider(endIndent: 0.0, indent: 0.0, height: 1.0),
//                 body,
//               ],
//             ),
//           )));
// }
