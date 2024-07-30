import 'package:cv_responsive/ui/common/app_strings.dart';
import 'package:cv_responsive/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'about_me_viewmodel.dart';

class AboutMeView extends StackedView<AboutMeViewModel> {
  const AboutMeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AboutMeViewModel viewModel,
    Widget? child,
  ) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.all(tinyPadding),
          child: const Text(
            about,
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
