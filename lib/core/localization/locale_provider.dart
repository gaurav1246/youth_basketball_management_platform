import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  static const String _localeKey = 'app_locale';

  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  bool get isHebrew => _locale.languageCode == 'he';

  bool get isEnglish => _locale.languageCode == 'en';

  LocaleProvider() {
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();

    final languageCode = prefs.getString(_localeKey);

    if (languageCode == 'he') {
      _locale = const Locale('he');
    } else {
      _locale = const Locale('en');
    }

    notifyListeners();
  }

  Future<void> setEnglish() async {
    await _setLocale(const Locale('en'));
  }

  Future<void> setHebrew() async {
    await _setLocale(const Locale('he'));
  }

  Future<void> toggleLanguage() async {
    if (isEnglish) {
      await setHebrew();
    } else {
      await setEnglish();
    }
  }

  Future<void> _setLocale(Locale locale) async {
    _locale = locale;

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_localeKey, locale.languageCode);

    notifyListeners();
  }
}
