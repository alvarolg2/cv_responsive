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
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: smallPadding),
        child: Column(
          children: [
            TimelinePoint(
              string: "2022 - 2023",
            ),
            verticalSpaceTiny,
            TimelineCard(
              title: "Oddysey Robotics",
              leftIcon: FaIcon(
                FontAwesomeIcons.userTie,
                color: Colors.grey,
              ),
              leftSubtitle: "Analista",
              height: 100,
            ),
            verticalSpaceTiny,
            TimelinePoint(
              string: "2023 - 2024",
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
