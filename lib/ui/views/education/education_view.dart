import 'package:cv_responsive/ui/common/app_strings.dart';
import 'package:cv_responsive/ui/common/ui_helpers.dart';
import 'package:cv_responsive/ui/widgets/common/timeline_card/timeline_card.dart';
import 'package:cv_responsive/ui/widgets/common/timeline_point/timeline_point.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import 'education_viewmodel.dart';

class EducationView extends StackedView<EducationViewModel> {
  const EducationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EducationViewModel viewModel,
    Widget? child,
  ) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: smallPadding),
        child: Column(
          children: [
            const TimelinePoint(
              string: "2018 - 2019",
            ),
            verticalSpaceTiny,
            TimelineCard(
              title: "Universidad Miguel Hernandez",
              leftIcon: const FaIcon(
                FontAwesomeIcons.chalkboardUser,
                color: Colors.grey,
              ),
              addTap: () {
                viewModel.launchInBrowser(Uri.parse(github));
              },
              leftSubtitle: "Telecomunicaciones",
              height: 100,
            ),
            verticalSpaceTiny,
            const TimelinePoint(
              string: "2024 - 2025",
            ),
          ],
        ),
      ),
    );
  }

  @override
  EducationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EducationViewModel();
}
