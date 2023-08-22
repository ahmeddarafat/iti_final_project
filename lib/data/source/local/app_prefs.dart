import 'package:shared_preferences/shared_preferences.dart';

class PrefsKeys {
  PrefsKeys._();

  static const String onboarding = "Onboarding";
  static const String login = "Login";
  static const String email = "email";
}

class AppPrefs {
  static late final SharedPreferences _sharedPrefs;

  static Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
  }

  /// OnBoarding
  static Future<void> setOnBoardingViewed() async {
    await _sharedPrefs.setBool(PrefsKeys.onboarding, true);
  }

  static bool isOnBoardingViewed() {
    return _sharedPrefs.getBool(PrefsKeys.onboarding) ?? false;
  }

  /// Auth
  static Future<void> setUserLoggedIn() async {
    await _sharedPrefs.setBool(PrefsKeys.login, true);
  }

  static bool isUserLoggedIn() {
    return _sharedPrefs.getBool(PrefsKeys.login) ?? false;
  }

  static Future<void> logout() async {
    await _sharedPrefs.remove(PrefsKeys.login);
  }

  /// email
  static Future<void> setEmail(String email) async {
    await _sharedPrefs.setString(PrefsKeys.login, email);
  }

  static String getEmail() {
    return _sharedPrefs.getString(PrefsKeys.login) ?? "";
  }
}
