import 'package:cv_responsive/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:cv_responsive/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:cv_responsive/ui/views/home/home_view.dart';
import 'package:cv_responsive/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:cv_responsive/ui/views/about_me/about_me_view.dart';
import 'package:cv_responsive/ui/views/experience/experience_view.dart';
import 'package:cv_responsive/ui/views/education/education_view.dart';
import 'package:cv_responsive/ui/views/skill/skill_view.dart';
import 'package:cv_responsive/services/language_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: AboutMeView),
    MaterialRoute(page: ExperienceView),
    MaterialRoute(page: EducationView),
    MaterialRoute(page: SkillView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: LanguageService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
