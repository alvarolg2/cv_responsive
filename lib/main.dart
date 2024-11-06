import 'package:cv_responsive/services/language_service.dart';
import 'package:cv_responsive/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:cv_responsive/app/app.bottomsheets.dart';
import 'package:cv_responsive/app/app.dialogs.dart';
import 'package:cv_responsive/app/app.locator.dart';
import 'package:cv_responsive/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final languageService = locator<LanguageService>();

    return ChangeNotifierProvider.value(
      value: languageService,
      child: Consumer<LanguageService>(
        builder: (context, language, child) {
          return MaterialApp(
            locale: language.locale,
            initialRoute: Routes.homeView,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'),
              Locale('es'),
            ],
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorKey: StackedService.navigatorKey,
            navigatorObservers: [
              StackedService.routeObserver,
            ],
            color: kcPrimaryColor,
            theme: ThemeData(
              primaryColor: kcPrimaryColor,
              primaryColorDark: kcPrimaryColorDark,
              iconTheme: const IconThemeData(color: kcPrimaryColor),
              iconButtonTheme: IconButtonThemeData(
                  style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(kcPrimaryColor),
              )),
              tabBarTheme: const TabBarTheme(
                  labelColor: kcPrimaryColor,
                  dividerColor: kcPrimaryColorDark,
                  indicatorColor: kcPrimaryColor),
            ),
          );
        },
      ),
    );
  }
}
