import 'package:cv_responsive/ui/common/app_strings.dart';
import 'package:cv_responsive/ui/common/ui_helpers.dart';
import 'package:cv_responsive/ui/widgets/common/timeline_card/timeline_card.dart';
import 'package:cv_responsive/ui/widgets/common/timeline_point/timeline_point.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'experience_viewmodel.dart';

class ExperienceView extends StackedView<ExperienceViewModel> {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ExperienceViewModel viewModel,
    Widget? child,
  ) {
    AppLocalizations t = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: smallPadding),
        child: Column(
          children: [
            TimelinePoint(
              string: "${t.december} - 2022 ",
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
              leftSubtitle: t.internship,
              height: 100,
            ),
            verticalSpaceTiny,
            TimelinePoint(
              string: "${t.may} - 2023",
            ),
            verticalSpaceTiny,
            TimelineCard(
              title: "Oddysey Robotics",
              leftIcon: const FaIcon(
                FontAwesomeIcons.userTie,
                color: Colors.grey,
              ),
              leftSubtitle: t.programmingAnalyst,
              height: 100,
              addTap: () {
                viewModel.launchInBrowser(Uri.parse(ody));
              },
            ),
            verticalSpaceTiny,
            TimelinePoint(
              string: t.present,
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
