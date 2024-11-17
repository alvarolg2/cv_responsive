import 'package:cv_responsive/app/app.bottomsheets.dart';
import 'package:stacked/stacked.dart';
import 'package:cv_responsive/app/app.locator.dart';
import 'package:cv_responsive/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:in_app_update/in_app_update.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();

  AppUpdateInfo? _updateInfo;

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await checkForUpdate();
    if (_updateInfo?.updateAvailability == UpdateAvailability.updateAvailable) {
      await InAppUpdate.performImmediateUpdate();
    }

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    _navigationService.replaceWithHomeView();
  }

  Future<void> checkForUpdate() async {
    InAppUpdate.checkForUpdate().then((info) {
      _updateInfo = info;
    }).catchError((e) {
      _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.notice,
        title: "Error", // ALG: añadir traducciones
        description: e.toString(),
      );
    });
  }
}
