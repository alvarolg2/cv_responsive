import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'skill_viewmodel.dart';

class SkillView extends StackedView<SkillViewModel> {
  const SkillView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SkillViewModel viewModel,
    Widget? child,
  ) {
    return Container(
    );
  }

  @override
  SkillViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SkillViewModel();
}
