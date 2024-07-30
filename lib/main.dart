import 'package:cv_responsive/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:cv_responsive/app/app.bottomsheets.dart';
import 'package:cv_responsive/app/app.dialogs.dart';
import 'package:cv_responsive/app/app.locator.dart';
import 'package:cv_responsive/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

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
    return MaterialApp(
      initialRoute: Routes.homeView,
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
      ),
    );
  }
}
