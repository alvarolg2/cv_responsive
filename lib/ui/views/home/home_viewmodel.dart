import 'package:cv_responsive/app/app.bottomsheets.dart';
import 'package:cv_responsive/app/app.dialogs.dart';
import 'package:cv_responsive/app/app.locator.dart';
import 'package:cv_responsive/services/language_service.dart';
import 'package:cv_responsive/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart'; // not remove

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _languageService = locator<LanguageService>();

  Locale get currentLocale => _languageService.locale;

  void changeLanguage(Locale locale) {
    _languageService.setLocale(locale);
  }

  final List<Locale> supportedLocales = [
    const Locale('en'), // English
    const Locale('es'), // Spanish
  ];

  final languages = {
    'English': const Locale('en'),
    'Español': const Locale('es'),
  };

  final Map<String, String> flags = {
    'en': 'images/flags/usa.png',
    'es': 'images/flags/spain.png',
  };
  //https://github.com/twitter/twemoji here icons

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.platformDefault,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
