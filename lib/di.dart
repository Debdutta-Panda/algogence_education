import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_settings.dart';
import 'navigation_service.dart';
import 'network.dart';
import 'network_impl.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPrefs = await SharedPreferences.getInstance();

  // shared prefs instance
  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  // rest call
  instance.registerLazySingleton<Network>(() => NetworkImpl(instance()));
  instance.registerLazySingleton<NavigationService>(() => NavigationServiceImpl());
  instance.registerLazySingleton<AppSettings>(() => AppSettingsImpl(instance()));
}