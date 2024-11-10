import 'package:cv_responsive/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'about_me_viewmodel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutMeView extends StackedView<AboutMeViewModel> {
  const AboutMeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AboutMeViewModel viewModel,
    Widget? child,
  ) {
    AppLocalizations t = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.all(tinyPadding),
          child: Text(
            t.textAboutMe,
            textAlign: TextAlign.justify,
          )),
    );
  }

  @override
  AboutMeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AboutMeViewModel();
}
