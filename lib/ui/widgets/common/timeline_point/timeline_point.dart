import 'package:cv_responsive/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'timeline_point_model.dart';

class TimelinePoint extends StackedView<TimelinePointModel> {
  final Color colorPoint;
  final String string; // ALG: elegir un nombre decente
  const TimelinePoint(
      {this.colorPoint = kcPrimaryColor, this.string = "", super.key});

  @override
  Widget builder(
    BuildContext context,
    TimelinePointModel viewModel,
    Widget? child,
  ) {
    return SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 50,
              alignment: Alignment.center,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                        width: 5, color: colorPoint, style: BorderStyle.solid)),
              ),
            ),
            Text(
              string,
              style: TextStyle(color: colorPoint),
            )
          ],
        ));
  }

  @override
  TimelinePointModel viewModelBuilder(
    BuildContext context,
  ) =>
      TimelinePointModel();
}
