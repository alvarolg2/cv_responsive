import 'package:cv_responsive/ui/common/app_colors.dart';
import 'package:cv_responsive/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'timeline_card_model.dart';

class TimelineCard extends StackedView<TimelineCardModel> {
  final Color colorLine;
  final double height;
  final Widget? widget;
  final String? title;
  final String? leftSubtitle;
  final String? rightSubtitle;
  final Icon? leftIcon;
  final Icon? rightIcon;
  const TimelineCard(
      {this.colorLine = Colors.grey,
      this.height = 200,
      this.widget,
      this.title,
      this.leftSubtitle,
      this.rightSubtitle,
      this.leftIcon,
      this.rightIcon,
      super.key});

  @override
  Widget builder(
    BuildContext context,
    TimelineCardModel viewModel,
    Widget? child,
  ) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 50,
            alignment: Alignment.center,
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(color: colorLine, width: 3, height: height),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(timelineCardRadius),
                ),
                border: Border.all(
                  width: 1,
                  color: colorLine,
                  style: BorderStyle.solid,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: tinyPadding),
                      child: widget ??
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //verticalSpaceSmall,
                              FittedBox(
                                child: Text(
                                  title ?? "",
                                  maxLines: 1,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kcPrimaryColor,
                                      fontSize: 18),
                                ),
                              ),
                              //verticalSpaceMedium,
                              Row(
                                mainAxisAlignment: rightSubtitle == null
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                                children: [
                                  leftIcon ??
                                      const Icon(
                                        Icons.abc,
                                        color: kcPrimaryColor,
                                      ),
                                  horizontalSpaceTiny,
                                  Text(
                                    leftSubtitle ?? "",
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        color: kcPrimaryColor, fontSize: 14),
                                  ),
                                  rightSubtitle == null
                                      ? const SizedBox.shrink()
                                      : leftIcon ??
                                          const Icon(
                                            Icons.abc,
                                            color: kcPrimaryColor,
                                          ),
                                  horizontalSpaceTiny,
                                  Text(
                                    rightSubtitle ?? "",
                                    style: const TextStyle(
                                        color: kcPrimaryColor, fontSize: 14),
                                  ),
                                ],
                              )
                            ],
                          ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: kcPrimaryColor,
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(
                              9), // ALG: ver porque no puedo poner 10
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  TimelineCardModel viewModelBuilder(
    BuildContext context,
  ) =>
      TimelineCardModel();
}
