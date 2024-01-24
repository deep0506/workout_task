// ignore_for_file: deprecated_member_use, unused_field

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

import '../utils/color_utils.dart';
import 'app_colors.dart';
import 'app_text_theme.dart';

export 'app_text_theme.dart' show TextStyleExt;

final appThemeProvider = StateNotifierProvider<ThemesNotifier, AppTheme>((ref) {
  return ThemesNotifier(ref.read);
});

class ThemesNotifier extends StateNotifier<AppTheme> {
  static final window = WidgetsBinding.instance!.window;
  static const String keyThemeMode = 'theme_mode';
  late final Reader _reader;
  // late final AppSharedPreferences _prefs = _reader(prefsProvider);

  ThemesNotifier(this._reader) : super(getPlatformTheme()) {
    // loadTheme();
    // themeListner();
  }

  static getPlatformTheme() {
    return window.platformBrightness == Brightness.dark
        ? AppTheme.dark()
        : AppTheme.light();
  }

  // void themeListner() async {
  //   if (await getPrefTheme() != null) return;
  //   window.onPlatformBrightnessChanged = () {
  //     state = getPlatformTheme();
  //   };
  // }
  //
  // getPrefTheme() async {
  //   final prefs = await _prefs.getInstance();
  //   final prefTheme = prefs.getString(keyThemeMode);
  //   return prefTheme;
  // }
  //
  // void changeTheme(ThemeMode theme) async {
  //   final prefs = await _prefs.getInstance();
  //   prefs.setString(keyThemeMode, EnumToString.convertToString(theme));
  //   state = theme == ThemeMode.dark ? AppTheme.dark() : AppTheme.light();
  // }
  //
  // void loadTheme() async {
  //   if (await getPrefTheme() == null) return;
  //   state = await getPrefTheme() == EnumToString.convertToString(ThemeMode.dark)
  //       ? AppTheme.dark()
  //       : AppTheme.light();
  // }
}

extension CustomThemeData on ThemeData {
  AppColors get appColors =>
      brightness == Brightness.light ? AppColors.light() : AppColors.dark();
}

class AppTheme {
  final ThemeMode mode;
  final ThemeData data;
  final AppTextTheme textTheme;
  final AppColors appColors;
  final bool isDarkMode;

  AppTheme({
    required this.mode,
    required this.data,
    required this.textTheme,
    required this.appColors,
    required this.isDarkMode,
  });

  factory AppTheme.light() {
    const mode = ThemeMode.light;
    final appColors = AppColors.light();
    final themeData = ThemeData(
      primaryColor: tahitiGold,
      primarySwatch: Colors.orange,
      brightness: Brightness.light,
      fontFamily: 'Calibri',
    ).copyWith(
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: black,
        selectionHandleColor: tahitiGold,
        selectionColor: tahitiGold,
      ),
      appBarTheme: AppBarTheme(color: appColors.background),
      scaffoldBackgroundColor: appColors.background,
      snackBarTheme: SnackBarThemeData(
        backgroundColor: appColors.textfieldError,
        behavior: SnackBarBehavior.floating,
      ),
      scrollbarTheme: ScrollbarThemeData(
          crossAxisMargin: 2.5,
          mainAxisMargin: 2,
          thumbColor: MaterialStateProperty.all(Colors.transparent),
          trackBorderColor: MaterialStateProperty.all(Colors.transparent),
          trackColor: MaterialStateProperty.all(Colors.transparent),
          thickness: MaterialStateProperty.all(10),
          radius: const Radius.circular(10)),
      colorScheme: const ColorScheme.light(),
    );
    return AppTheme(
        mode: mode,
        data: themeData,
        textTheme: AppTextTheme(),
        appColors: appColors,
        isDarkMode: false);
  }

  factory AppTheme.dark() {
    const mode = ThemeMode.dark;
    final appColors = AppColors.dark();

    // TODO : Change brightness to dark if need to support dark mode.
    final themeData = ThemeData(
      primaryColor: tahitiGold,
      primarySwatch: Colors.orange,
      brightness: Brightness.light,
      fontFamily: 'Calibri',
    ).copyWith(
      appBarTheme: AppBarTheme(color: appColors.background),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: black,
        selectionHandleColor: tahitiGold,
        selectionColor: tahitiGold,
      ),
      primaryColor: tahitiGold,
      scaffoldBackgroundColor: appColors.background,
      snackBarTheme: SnackBarThemeData(
        backgroundColor: appColors.textfieldError,
        behavior: SnackBarBehavior.floating,
      ),
      scrollbarTheme: ScrollbarThemeData(
          crossAxisMargin: 2.5,
          mainAxisMargin: 2,
          thickness: MaterialStateProperty.all(10),
          radius: const Radius.circular(10)),
      colorScheme: const ColorScheme.dark(),
    );
    return AppTheme(
        mode: mode,
        data: themeData,
        textTheme: AppTextTheme(),
        appColors: appColors,
        isDarkMode: true);
  }
}
