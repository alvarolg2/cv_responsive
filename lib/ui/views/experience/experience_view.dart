import 'package:cv_responsive/ui/common/app_strings.dart';
import 'package:cv_responsive/ui/common/ui_helpers.dart';
import 'package:cv_responsive/ui/widgets/common/timeline_card/timeline_card.dart';
import 'package:cv_responsive/ui/widgets/common/timeline_point/timeline_point.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import 'experience_viewmodel.dart';

class ExperienceView extends StackedView<ExperienceViewModel> {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ExperienceViewModel viewModel,
    Widget? child,
  ) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: smallPadding),
        child: Column(
          children: [
            const TimelinePoint(
              string: "$december - 2022 ",
            ),
            verticalSpaceTiny,
            TimelineCard(
              title: "Oddysey Robotics",
              leftIcon: const FaIcon(
                FontAwesomeIcons.userTie,
                color: Colors.grey,
              ),
              addTap: () {
                viewModel.launchInBrowser(Uri.parse(ody));
              },
              leftSubtitle: professionalInternships,
              height: 100,
            ),
            verticalSpaceTiny,
            const TimelinePoint(
              string: "$may - 2023",
            ),
            verticalSpaceTiny,
            TimelineCard(
              title: "Oddysey Robotics",
              leftIcon: const FaIcon(
                FontAwesomeIcons.userTie,
                color: Colors.grey,
              ),
              leftSubtitle: analyst,
              height: 100,
              addTap: () {
                viewModel.launchInBrowser(Uri.parse(ody));
              },
            ),
            verticalSpaceTiny,
            const TimelinePoint(
              string: present,
            ),
          ],
        ),
      ),
    );
  }

  @override
  ExperienceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ExperienceViewModel();
}
