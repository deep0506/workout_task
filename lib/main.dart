import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart';
import 'package:workout_task/provider/app_state_provider.dart';
import 'package:workout_task/theme/app_theme.dart';
import 'package:workout_task/utils/constants/navigation_route_constants.dart';
import 'package:workout_task/utils/custom_scroll_behavior.dart';
import 'package:workout_task/utils/navigation_utils.dart';
import 'package:workout_task/utils/preference_utils.dart';

import 'di/locator.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await init();
  runApp(
    ProviderScope(
      observers: [Logger()],
      child: MultiProvider(
        providers: [
          ListenableProvider(create: (_) => AppStateProvider()),
        ],
        child: const App(),
      ),
    ),
  );
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
      ProviderBase provider,
      Object? previousValue,
      Object? newValue,
      ProviderContainer container,
      ) {
    debugPrint(
        '[${provider.name ?? provider.runtimeType}] previousValue: $previousValue value: $newValue');
  }
}

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    final appTheme = ref.watch(appThemeProvider);
    return Material(
      child:
      LayoutBuilder(builder: (layoutContext, BoxConstraints constraints) {
        return OrientationBuilder(builder: (context, Orientation orientation) {
          return MaterialApp(
            scrollBehavior: MyCustomScrollBehavior(),
            theme: appTheme.data,
            darkTheme: AppTheme.dark().data,
            themeMode: appTheme.mode,
            debugShowCheckedModeBanner: false,
            navigatorKey: locator<NavigationUtils>().globalStateKey,
            onGenerateRoute: locator<NavigationUtils>().generateRoute,
            initialRoute: routeSplash,
            // home: ProductionOrder(),
          );
        });
      }),
    );
  }
}
