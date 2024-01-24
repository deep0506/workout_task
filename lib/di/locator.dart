import 'package:get_it/get_it.dart';

import '../utils/navigation_utils.dart';

final locator = GetIt.instance;

late final NavigationUtils navigationService;

void setupLocator() {
  locator.registerSingleton<NavigationUtils>(NavigationUtils());
  navigationService = locator<NavigationUtils>();
}
