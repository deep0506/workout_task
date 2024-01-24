import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'dialog_utils.dart';

//TODO: handle permission for iOS
Future<bool> _requestPermission(Permission permission, context) async {
  if (await permission.isGranted) {
    return true;
  } else {
    var result = await permission.request();
    if (result == PermissionStatus.granted) {
      return true;
    } else if (result == PermissionStatus.permanentlyDenied) {
      flutterToast(context, "Please enable permission in settings",
          isError: true);
    }
  }
  return false;
}

Future<bool> _requestMutiplePermissions(
    List<Permission> permission, context) async {
  Map<Permission, PermissionStatus> result = await permission.request();
  var _permissionCount = 0;
  result.forEach((key, value) {
    if (value == PermissionStatus.granted) {
      _permissionCount++;
    }
  });
  print(_permissionCount);
  if (_permissionCount >= permission.length) {
    return true;
  } else if (result == PermissionStatus.permanentlyDenied) {
    flutterToast(context, "Please enable permission in settings",
        isError: true);
    return false;
  } else {
    return false;
  }
}

checkPdfPermission(context) async {
  try {
    if (Platform.isAndroid) {
      if (await _requestPermission(Permission.storage, context)) {
        return true;
      } else {
        return false;
      }
    } else {
      return true;
    }
  } on Exception catch (error) {
    debugPrint(error.toString());
  }
}

checkVideoCallPermission(context) async {
  try {
    if (Platform.isAndroid) {
      if (await _requestMutiplePermissions(
          [Permission.microphone, Permission.camera, Permission.storage],
          context)) {
        return true;
      } else {
        return false;
      }
    } else {
      return true;
    }
  } on Exception catch (error) {
    debugPrint(error.toString());
  }
}
