// //
// // import 'strings.dart';
// // import 'package:flutter/material.dart';
// //
// // String? fullName(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return enterName;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return namecontainletter;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? firstname(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return enterFirstName;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return firstnamecontainletter;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? lastname(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return enterLastName;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return lastnamecontainletter;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? middelname(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isNotEmpty) {
// //     if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //       return middlenamecontainletter;
// //     }
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? optionalFirstName(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //   if (value.trim().isNotEmpty) {
// //     if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //       return firstnamecontainletter;
// //     }
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? optionalLastName(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //   if (value.trim().isNotEmpty) {
// //     if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //       return lastnamecontainletter;
// //     }
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? optionalMiddleName(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isNotEmpty) {
// //     if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //       return middlenamecontainletter;
// //     }
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? isValidReasonForPayment(String value) {
// //   if (value.trim().isEmpty) {
// //     return enterReasonForPayment;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? isValidOccupationOfPayor(String value) {
// //   if (value.trim().isEmpty) {
// //     return enterOccupationOfPayor;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? isValueSelected(String? value) {
// //   if (value == null || value == selectOption) {
// //     return pleaseSelectOption;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? isYesTicked(String value, List<ValueNotifier<int>> radioButtonStates) {
// //   final radioButtonBoolValue = [true, false];
// //
// //   for (ValueNotifier<int> radioButtonValue in radioButtonStates) {
// //     if (radioButtonBoolValue[radioButtonValue.value]) {
// //       if (value.trim().isEmpty) {
// //         return provideCompleteDetails;
// //       } else {
// //         return null;
// //       }
// //     }
// //   }
// // }
// //
// // String? isInstrumentNumber(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return enterInstrumentNumber;
// //   } else if (!pattern.hasMatch(value.trim())) {
// //     return enterValidInstrumentNumber;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? isAccountNumber(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return enterAccountNumber;
// //   } else if (!pattern.hasMatch(value.trim())) {
// //     return enterValidAccountNumber;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? isValidIfscCode(String value) {
// //   if (value.trim().isEmpty) {
// //     return enterIfscCode;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // final validCharPattern = RegExp(r'^[a-zA-Z]+$');
// //
// // String? isValidNumber(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return enterPhone;
// //   } else if ((!pattern.hasMatch(value.trim()) ||
// //       value.trim().length > 10 ||
// //       value.trim().length < 10)) {
// //     return enterValidPhone;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? isEmployeeID(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return enterEmployeeID;
// //   } else if ((!pattern.hasMatch(value.trim()) ||
// //       value.trim().length > 8 ||
// //       value.trim().length < 8)) {
// //     return enterValidEmployeeID;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? isAmount(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return enterAmount;
// //   } else if (!pattern.hasMatch(value.trim())) {
// //     return enterValidAmount;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? isEmpty(String value) => value.trim().isEmpty ? enterDetails : null;
// //
// // String? isValidCkycNumber(String value) =>
// //     value.trim().isEmpty ? enterCkycNumber : null;
// //
// // String? otpValidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //   if (value.trim().isEmpty) {
// //     return enterOTP;
// //   } else if (!pattern.hasMatch(value.trim())) {
// //     return enterValidOTP;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? srValidation(String value) =>
// //     value.trim().isEmpty ? enterSRNumerror : null;
// //
// // String? isUserIdValid(String value) {
// //   if (value.trim().isEmpty) {
// //     return pleaseEnterID;
// //   }
// //   return null;
// // }
// //
// // String? isPasswordValid(String value) {
// //   if (value.trim().isEmpty) {
// //     return emptyPassword;
// //   }
// //   return null;
// // }
// //
// // String? isConfirmPasswordValid(String value, String confirmpass) {
// //   if (value.trim().isEmpty) {
// //     return emptyPassword;
// //   } else if (value.trim() != confirmpass.trim()) {
// //     return samePassword;
// //   }
// //   return null;
// // }
// //
// // String? isEmailValid(String value) {
// //   if (value.isEmpty) {
// //     return enterEmailId;
// //   }
// //   if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
// //       .hasMatch(value)) {
// //     return invalidEmail;
// //   }
// //   return null;
// // }
// //
// // String? applicationValidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //   if (value.trim().isEmpty) {
// //     return enterApplicationNum;
// //   } else if (!pattern.hasMatch(value.trim())) {
// //     return enterValidApplicationNum;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? forEmptyValidation(String value) =>
// //     value.trim().isEmpty ? enterEmptyFiled : null;
// //
// // String? brValidation(String value) =>
// //     value.trim().isEmpty ? enterBRCodeValidation : null;
// //
// // String? firstNameValidation(String value) =>
// //     value.trim().isEmpty ? enterFirstName : null;
// //
// // String? lastNameValidation(String value) =>
// //     value.trim().isEmpty ? enterLastName : null;
// //
// // String? middleNameValidation(String value) =>
// //     value.trim().isEmpty ? enterMiddleName : null;
// //
// // String? branchIdValidation(String value) =>
// //     value.trim().isEmpty ? enterLastName : null;
// //
// // String? fromValidation(String value) =>
// //     value.trim().isEmpty ? pickFromDate : null;
// //
// // String? toValidation(String value) => value.trim().isEmpty ? pickToDate : null;
// //
// // String? documentValidation(String value) =>
// //     value.trim().isEmpty ? uploadDocumentRequired : null;
// //
// // String? descriptionValidation(String value) =>
// //     value.trim().isEmpty ? enterDetails : null;
// //
// // String? emailValidation(String value) =>
// //     value.trim().isEmpty ? enterEmailId : null;
// //
// // String? branchValidation(String value) =>
// //     value.trim().isEmpty ? enterBranchId : null;
// //
// // String? sourceValidation(String value) =>
// //     value.trim().isEmpty ? enterSource : null;
// //
// // String? channelValidation(String value) =>
// //     value.trim().isEmpty ? enterChannel : null;
// //
// // String? payorNameValidation(String value) =>
// //     value.trim().isEmpty ? enterPayorName : null;
// //
// // String? validateInput(String value) {
// //   try {
// //     if (value.length == 0) {
// //       return 'This is required';
// //     } else {
// //       return null;
// //     }
// //   } on Exception catch (e) {}
// // }
// //
// // String? occupationvalidation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return occupationname;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return occupationcontainletter;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? dobvalidation(String value) {
// //   final pattern = RegExp(
// //     r"^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$",
// //     caseSensitive: true,
// //     multiLine: false,
// //   );
// //   if (value.trim().isEmpty) {
// //     return pickToDate;
// //   } else if ((!pattern.hasMatch(value.trim()) ||
// //       value.trim().contains(today))) {
// //   } else {
// //     return null;
// //   }
// // }
// //
// // // RegExp regExp = new RegExp(
// // //   r"^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$",
// // //   caseSensitive: true,
// // //   multiLine: false,
// // // );
// // // int ageCalculate(String input) {
// // //   if (regExp.hasMatch(input)) {
// // //     DateTime _dateTime = DateTime(
// // //       int.parse(input.substring(6)),
// // //       int.parse(input.substring(3, 5)),
// // //       int.parse(input.substring(0, 2)),
// // //     );
// // //     return DateTime.fromMillisecondsSinceEpoch(
// // //                 DateTime.now().difference(_dateTime).inMilliseconds)
// // //             .year -
// // //         1970;
// // //   } else {
// // //     return -1;
// // //   }
// // // }
// //
// // String? retairmentage(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return plsenterretairmnetage;
// //   } else if ((!pattern.hasMatch(value.trim()))) {
// //     return retairmentagetwodigitonly;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? pancadrvalidation(String value) {
// //   final pattern = RegExp(r'[A-Z]{5}[0-9]{4}[A-Z]{1}');
// //
// //   if (value.trim().isEmpty) {
// //     return pandetails;
// //   } else if ((!pattern.hasMatch(value.trim()))) {
// //     return pannamedetails;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? loanAccountNumberValidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (pattern.hasMatch(value) ||
// //       value.trim().isEmpty ||
// //       value.trim().length != 5) {
// //     return "Enter Valid Account Number";
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? annualexpensesvalidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return plsenterannualexpense;
// //   } else if ((!pattern.hasMatch(value.trim()))) {
// //     return annualincomemust;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? customerIDValidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (pattern.hasMatch(value) ||
// //       value.trim().isEmpty ||
// //       value.trim().length != 4) {
// //     return "Enter Valid Customer ID";
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? currentliabilitiesvalidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return plsentercurrentliabilities;
// //   } else if ((!pattern.hasMatch(value.trim()))) {
// //     return totalsamust;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? totalSavalidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return plsentertotalsa;
// //   } else if ((!pattern.hasMatch(value.trim()))) {
// //     return totalsamust;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? agreedriskcovervalidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return agreedriskcover;
// //   } else if ((!pattern.hasMatch(value.trim()))) {
// //     return agreedriskcovermust;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? anyotherinfovalidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return plsentertotalsa;
// //   } else if ((!pattern.hasMatch(value.trim()))) {
// //     return totalsamust;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? annualincomevalidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return plsenterannualexpense;
// //   } else if ((!pattern.hasMatch(value.trim()) ||
// //       value.trim().length < 10 ||
// //       value.trim().length > 10)) {
// //     return annualincomemustbe12;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? exactnaturejobvalidation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return exactnatureofjob;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return exactnatureofjobdetails;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? policyorapplivalidation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return policyorappli;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return policyorapplidetails;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? customerclientidvalidation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return customerclientid;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return customerclientiddetails;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? reffersnamevalidation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return reffersname;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return reffersnamedetails;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? refferemployeecodevalidation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return reffersemployeecode;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return reffersemployeecodedetails;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? bankMOCodeValidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (pattern.hasMatch(value) ||
// //       value.trim().isEmpty ||
// //       value.trim().length != 4) {
// //     return "Enter Valid Bank MO Code";
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? issuingcompanyvalidation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return premiumterm;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return pleaseenterdetails;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? yearissuevalidation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return adbsumassure;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return pleaseenteradb;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? addressLine1Validation(String value) {
// //   if (validCharPattern.hasMatch(value) ||
// //       value.trim().isEmpty ||
// //       value.trim().length != 50) {
// //     return "Enter Valid Address Line 1";
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? annualpremiumvalidation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return enteranualpemium;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return pleaseenteratdbsum;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? addressLine2Validation(String value) {
// //   if (validCharPattern.hasMatch(value) ||
// //       value.trim().isEmpty ||
// //       value.trim().length != 50) {
// //     return "Enter Valid Address Line 2";
// //   } else {
// //     return null;
// //   }
// // }
// //
// // //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// // //   if (value.trim().isEmpty) {
// // //     return sumassured;
// // //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// // //     return pleaseentersumassured;
// // //   } else {
// // //     return null;
// // //   }
// // // }
// //
// // String? riskcovervalidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return riskcoverneed;
// //   } else if ((!pattern.hasMatch(value.trim()))) {
// //     return riskcovernumber;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? pincodeValidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return reffersemployeecodedetails;
// //   } else if ((!pattern.hasMatch(value.trim()))) {
// //     return enterPincode;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? currentassetsvalidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return currentassets;
// //   } else if ((!pattern.hasMatch(value.trim()))) {
// //     return currentassetsnumber;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? gapvalidation(String value) {
// //   final pattern = RegExp(r'^[0-9]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return gapvalid;
// //   } else if ((!pattern.hasMatch(value.trim()))) {
// //     return gapnumber;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? address1validation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return enteraddress1;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return address1details;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? address2validation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return enteraddress2;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return address2details;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? fathernamevalidation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return fathername;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return fathernamedetails;
// //   } else {
// //     return null;
// //   }
// // }
// //
// // String? mothernamevalidation(String value) {
// //   final pattern = RegExp(r'^[a-zA-Z]+$');
// //
// //   if (value.trim().isEmpty) {
// //     return mothername;
// //   } else if ((!pattern.hasMatch(value.trim()) || value.trim().length >= 25)) {
// //     return mothernamedetails;
// //   } else {
// //     return null;
// //   }
// // }
// //
//
//
//
// String? companyNameValidation(String? value) =>
//     value!.trim().isEmpty ? HitCompanyName : null;
//
// String? addressValidation(String? value) =>
//     value!.trim().isEmpty ? enterYourAddress : null;
//
// String? gstValidation(String? value) {
//   final pattern =
//       RegExp("^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}");
//
//   if (pattern.hasMatch(value ?? '') ||
//       value!.trim().isEmpty ||
//       value.trim().length != 15) {
//     return enterValidGstNumber;
//   } else {
//     return null;
//   }
// }
//
// String? pancadrvalidation(String? value) {
//   final pattern = RegExp(r'[A-Z]{5}[0-9]{4}[A-Z]{1}');
//
//   if (value!.trim().isEmpty) {
//     return enterPANNumber;
//   } else if ((!pattern.hasMatch(value.trim()))) {
//     return enterValidPanNumber;
//   } else {
//     return null;
//   }
// }
//
// String? companyIdValidation(String? value) =>
//     value!.trim().isEmpty ? HitCompanyId : null;
//
// String? companyQuantityValidation(String? value) =>
//     value!.trim().isEmpty ? HitQuantity : null;
//
// String? shapeValidation(String? value) =>
//     value!.trim().isEmpty ? HitShape : null;
//
// String? startingWeightValidation(String? value) =>
//     value!.trim().isEmpty ? enterStartingWeight : null;
//
// String? endingWeightValidation(String? value) =>
//     value!.trim().isEmpty ? enterEndingWeight : null;
//
// String? companyRateValidation(String? value) =>
//     value!.trim().isEmpty ? HitKRate : null;
//
// String? companyCodeValidation(String? value) =>
//     value!.trim().isEmpty ? HitKCompanyCode : null;
//
// String? jangadNumberValidation(String? value) =>
//     value!.trim().isEmpty ? HitJangadNumber : null;
//
// String? weightValidation(String? value) =>
//     value!.trim().isEmpty ? HitWeight : null;
//
// String? kapanValidation(String? value) =>
//     value!.trim().isEmpty ? HitKapan : null;
//
// String? khanchValidation(String? value) =>
//     value!.trim().isEmpty ? HitKhanch : null;
//
// String? companyamountValidation(String? value) =>
//     value!.trim().isEmpty ? HitKAmount : null;
//
// String? monthValidation(String? value) =>
//     value!.trim().isEmpty ? HitKMonth : null;
//
// String? yearValidation(String? value) =>
//     value!.trim().isEmpty ? HitKYear : null;
//
// String? dateValidation(String? value) =>
//     value!.trim().isEmpty ? HitKDate : null;
//
// String? jamaValidation(String? value) =>
//     value!.trim().isEmpty ? HitjamaAmount : null;
//
// String? lossValidation(String? value) => value!.trim().isEmpty ? HitlossAmount : null;
// String? accountNoValidation(String? value) => value!.trim().isEmpty ? enterAccountNo : null;
// String? ifscValidation(String? value) => value!.trim().isEmpty ? enterIfscCode : null;
//
//
// String? mobileValidation(String? value) {
//   final pattern = RegExp(r'^[0-9]+$');
//
//   if (pattern.hasMatch(value!) ||
//       value.trim().isEmpty ||
//       value.trim().length != 10) {
//     return enterMobile;
//   } else {
//     return null;
//   }
// }