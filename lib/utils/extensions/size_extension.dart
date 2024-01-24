import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';


extension SizedContext on BuildContext {
  /// Returns same as MediaQuery.of(context)
  MediaQueryData get mq => MediaQuery.of(this);

  /// Returns if Orientation is landscape
  bool get isLandscape => mq.orientation == Orientation.landscape;

  bool get isWeb => kIsWeb;

  bool get isTablet => getValueForScreenType<bool>(
    context: this,
    mobile: false,
    tablet: true,
  );

  bool get isDesktop => getValueForScreenType<bool>(
      context: this, mobile: false, tablet: false, desktop: true);

  bool get isMobile => getValueForScreenType<bool>(
      context: this, mobile: true, tablet: false, desktop: false);

  bool get isWebMobile => kIsWeb && isMobile;

  bool get isWebTablet => kIsWeb && isTablet;

  dynamic staticSize(mobile, [tabletPortrait, tabletLandscape, web]) {
    final tabletPotraitSize = tabletPortrait ?? mobile;
    final tabletLandscapeSize = tabletLandscape ?? (tabletPortrait ?? mobile);

    if (kIsWeb) {
      return getValueForScreenType(
        context: this,
        mobile: mobile,
        tablet: mobile,
        desktop: mobile,
      );
    }
    return getValueForScreenType(
      context: this,
      mobile: mobile,
      tablet: isLandscape ? tabletLandscapeSize : tabletPotraitSize,
    );
  }


  dynamic dynamicSize(mobile, [tabletPortrait, tabletLandscape, web]) {
    final tabletPotraitSize = tabletPortrait ?? mobile;
    final tabletLandscapeSize = tabletLandscape ?? (tabletPortrait ?? mobile);

    if (kIsWeb) {
      return getValueForScreenType(
        context: this,
        mobile: mobile,
        tablet: tabletLandscapeSize,
        desktop: web ?? tabletLandscapeSize,
      );
    }
    return getValueForScreenType(
      context: this,
      mobile: mobile,
      tablet: isLandscape ? tabletLandscapeSize : tabletPotraitSize,
    );
  }

  // use when needed to deliver constant value
  dynamic constantSize(mobile, [tabletPortrait, tabletLandscape, web]) {
    final tabletPotraitSize = tabletPortrait ?? mobile;
    final tabletLandscapeSize = tabletLandscape ?? (tabletPortrait ?? mobile);

    if (kIsWeb) {
      return getValueForScreenType(
        context: this,
        mobile: mobile,
        tablet: tabletLandscapeSize,
        desktop: web ?? tabletLandscapeSize,
      );
    }
    return getValueForScreenType(
      context: this,
      mobile: mobile,
      tablet: isLandscape ? tabletLandscapeSize : tabletPotraitSize,
    );
  }

  dynamic fontSize(mobile, [tabletPortrait, tabletLandscape, web]) {
    final tabletPotraitSize = tabletPortrait ?? mobile;
    final tabletLandscapeSize = tabletLandscape ?? (tabletPortrait ?? mobile);

    if (kIsWeb) {
      return getValueForScreenType(
        context: this,
        mobile: mobile,
        tablet: tabletLandscapeSize,
        desktop: web ?? tabletLandscapeSize,
      );
    }
    return getValueForScreenType(
      context: this,
      mobile: mobile,
      tablet: isLandscape ? tabletLandscapeSize : tabletPotraitSize,
    );
  }
}

extension SizedExtension on num {
  //Constant size
  double get c => toDouble();

  ///[ScreenUtil.setWidth]
  // double get w => ScreenUtil().setWidth(toDouble());

  ///[ScreenUtil.setHeight]
  // double get h =>(kIsWeb) ?  c : ScreenUtil().setHeight(toDouble());

  ///[ScreenUtil.radius]
  double get r => ScreenUtil().radius(toDouble());

  ///[ScreenUtil.setSp]
  // double get sp => (kIsWeb) ?  c : ScreenUtil().setSp(toDouble());

  ///Multiple of screen width
  double get sw => ScreenUtil().screenWidth * toDouble();

  ///Multiple of screen height
  double get sh => ScreenUtil().screenHeight * toDouble();
}
