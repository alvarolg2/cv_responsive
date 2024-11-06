import 'package:flutter/material.dart';

class LanguageService extends ChangeNotifier {
  Locale? _locale;

  Locale get locale =>
      _locale ?? WidgetsBinding.instance.platformDispatcher.locale;

  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}
