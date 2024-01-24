// import 'dart:io';
//
// import 'package:app_settings/app_settings.dart';
// import 'package:com.miochoice.sales/src/data/models/app_error.dart';
// import 'package:com.miochoice.sales/src/di/locator.dart';
// import 'package:device_info/device_info.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
//
// import 'constants/app_constant.dart';
// import 'constants/color_constant.dart';
// import 'constants/dic_params.dart';
// import 'constants/fontsize_constant.dart';
// import 'constants/navigation_route_constants.dart';
// import 'dialog_utils.dart';
// import 'localization/localization.dart';
//
// // Get Text Widget
// Widget getTextWidget(
//         {required String title,
//         Color textColor = primaryTextColor,
//         double textFontSize = fontSize14,
//         FontWeight? textFontWeight,
//         TextAlign? textAlign,
//         int? maxLines}) =>
//     Text(
//       title,
//       textAlign: textAlign,
//       maxLines: maxLines,
//       overflow: maxLines != null ? TextOverflow.ellipsis : null,
//       style: TextStyle(
//         fontSize: textFontSize,
//         color: textColor,
//         fontWeight: textFontWeight,
//       ),
//     );
//
// // Get Bottom Sheet
// Widget getBottomSheetAction(
//         {required BuildContext context,
//         required IconData icon,
//         required String title,
//         required Function onTap}) =>
//     GestureDetector(
//       onTap: () {
//         Navigator.of(context).pop();
//         onTap();
//       },
//       child: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           children: <Widget>[
//             ClipOval(
//               child: Container(
//                 color: primaryColor,
//                 padding: const EdgeInsets.all(10.0),
//                 child: Icon(
//                   icon,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             getTextWidget(title: title, textFontSize: fontSize14),
//           ],
//         ),
//       ),
//     );
//
// // Pick Image From Gallery
// Future<XFile?> getImageFromGallery(BuildContext context) async {
//   final _picker = ImagePicker();
//   late XFile? _file;
//   try {
//     _file = await _picker.pickImage(
//       source: ImageSource.gallery,
//       imageQuality: imageQuality,
//     );
//   } on PlatformException catch (e) {
//     if (e.code == permissionTypePhotos) {
//       openSettings(context);
//     }
//   }
//   return _file;
// }
//
// // Pick Image From Camera
// Future<XFile?> getImageFromCamera(BuildContext context) async {
//   final _picker = ImagePicker();
//   XFile? _file;
//   try {
//     _file = await _picker.pickImage(
//       source: ImageSource.camera,
//       preferredCameraDevice: CameraDevice.rear,
//       imageQuality: imageQuality,
//     );
//   } on PlatformException catch (e) {
//     if (e.code == permissionTypeCamera) {
//       openSettings(context);
//     }
//   }
//   return _file;
// }
//
// // To Open App Settings
// void openSettings(BuildContext context) {
//   showOkCancelAlertDialog(
//     context: context,
//     message: Localization.of(context)!.alertPermissionNotRestricted,
//     cancelButtonTitle: Localization.of(context)!.cancel,
//     okButtonTitle: Localization.of(context)!.ok,
//     okButtonAction: () {
//       AppSettings.openAppSettings();
//     },
//   );
// }
//
// // To Get the Device ID
// Future<String> getDeviceId() async {
//   var deviceInfo = DeviceInfoPlugin();
//   if (Platform.isIOS) {
//     var iosDeviceInfo = await deviceInfo.iosInfo;
//     return iosDeviceInfo.identifierForVendor; // unique ID on iOS
//   } else {
//     var androidDeviceInfo = await deviceInfo.androidInfo;
//     return androidDeviceInfo.androidId; // unique ID on Android
//   }
// }
//
// // Common Date Picker
// Future<DateTime?> pickDate(
//     {required BuildContext context,
//     DateTime? initialDate,
//     DateTime? firstDate,
//     DateTime? lastDate}) async {
//   final picked = await showDatePicker(
//     context: context,
//     initialDate: initialDate ?? DateTime.now(),
//     firstDate: firstDate ?? DateTime.now(),
//     lastDate: lastDate ?? DateTime(DateTime.now().year + lastYear),
//     builder: (context, child) {
//       return Theme(
//         data: ThemeData.light().copyWith(
//           colorScheme:
//               const ColorScheme.light().copyWith(primary: primaryColor),
//         ),
//         child: child!,
//       );
//     },
//   );
//   return picked ?? initialDate;
// }
//
//
// bool checkIsAuthorized(AppError error){
//   if (error.response?.statusCode == 401) {
//     displayToast("Session Expired");
//     navigationService.pushAndRemoveUntil(routeLoginOtp);
//     return false;
//   }
//   return true;
// }