
import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';
abstract class AppSettings{
  get userId;
}

class AppSettingsImpl extends AppSettings{
  SharedPreferences sharedPreferences;
  AppSettingsImpl(this.sharedPreferences);

  @override
  get userId => sharedPreferences.get(Constants.user_id);
}