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
              title: "Universidad Miguel Hernandez",
              leftIcon: FaIcon(
                FontAwesomeIcons.chalkboardUser,
                color: Colors.grey,
              ),
              leftSubtitle: "Telecomunicaciones",
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
  EducationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EducationViewModel();
}
