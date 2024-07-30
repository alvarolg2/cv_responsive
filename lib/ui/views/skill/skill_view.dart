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
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  SkillViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SkillViewModel();
}
