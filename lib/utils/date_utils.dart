// import 'package:intl/intl.dart';
//
// import 'strings.dart';
//
// class DateConstants {
//   static const String apiDateFormat = "yyyy-MM-dd HH:mm:ss";
//   static const String commonDateFormat = "yyyy-MM-dd";
//   static const String commonTimeFormat = "hh:mm a";
//   static const String eventDateFormat = "dd MMM,yyyy";
//   static const String getDay = "dd";
//   static const String getMonth = "MMM";
// }
//
// String dateToString(DateTime date,
//     {String dateFormat = DateConstants.commonDateFormat}) {
//   return DateFormat(dateFormat).format(date);
// }
//
// DateTime stringToDate(String dateString,
//     {String dateFormat = DateConstants.apiDateFormat}) {
//   try {
//     return DateFormat(dateFormat).parse(dateString);
//   } on Exception catch (_) {
//     return DateTime.now();
//   }
// }
//
// // convert date from API response to app date format
// String getConvertedDate(String dateString,
//     {String dateFormat = DateConstants.commonDateFormat}) {
//   try {
//     var dateTime =
//         DateFormat(DateConstants.commonDateFormat).parse(dateString, true);
//     var formattedDate = DateFormat(dateFormat).format(dateTime.toLocal());
//     return formattedDate;
//   } on Exception catch (_) {
//     return "";
//   }
// }
//
// // convert date from API response to app time format
// String getConvertedTime(String dateString) {
//   try {
//     var dateTime =
//         DateFormat(DateConstants.apiDateFormat).parse(dateString, true);
//     var formattedDate =
//         DateFormat(DateConstants.commonTimeFormat).format(dateTime.toLocal());
//     return formattedDate;
//   } on Exception catch (_) {
//     return "";
//   }
// }
//
// String finalDate(DateTime passDate) {
//   if (DateTime.now().difference(passDate).inDays < 1) {
//     return '$today - ${DateFormat('hh:mm a').format(passDate)}';
//   } else if (DateTime.now().difference(passDate).inDays == 1) {
//     return '$yesterday - ${DateFormat('hh:mm a').format(passDate)}';
//   } else {
//     return '${DateFormat('dd MMM yyyy').format(passDate)} - ${DateFormat('hh:mm a').format(passDate)}';
//   }
// }
//
// //Converting date from 19890622 to 22 Jun 1989
// String getDateInMMM(String date) {
//   final day = date.split("T")[0].substring(6);
//   final month = date.split("T")[0].substring(4, 6);
//   final year = date.split("T")[0].substring(0, 4);
//
//   final monthInMMM = DateFormat(DateConstants.getMonth).format(DateTime(0, int.parse(month)));
//   return '$day $monthInMMM $year';
// }