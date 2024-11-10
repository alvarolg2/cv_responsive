import 'package:cv_responsive/ui/common/app_colors.dart';
import 'package:cv_responsive/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
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
    double heigthIcons = 30;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(smallPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text("Java"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/java-original.svg',
                  fit: BoxFit.fitHeight,
                  height: heigthIcons,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                ),
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("Flutter"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/flutter-plain.svg',
                  fit: BoxFit.fitHeight,
                  height: heigthIcons,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("Kotlin"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/kotlin-original.svg',
                  fit: BoxFit.fitHeight,
                  height: heigthIcons,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            const Row(
              children: [
                Text("Python"),
                horizontalSpaceTiny,
                Icon(FontAwesomeIcons.python)
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("php"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/php-original.svg',
                  fit: BoxFit.fitHeight,
                  height: 30,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("Django"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/django-plain.svg',
                  fit: BoxFit.fitHeight,
                  height: heigthIcons,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("Docker"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/docker-original.svg',
                  fit: BoxFit.fitHeight,
                  height: 30,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("Git"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/git-original.svg',
                  fit: BoxFit.fitHeight,
                  height: 30,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("Godot"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/godot-original.svg',
                  fit: BoxFit.fitHeight,
                  height: 30,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("Grafana"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/grafana-original.svg',
                  fit: BoxFit.fitHeight,
                  height: 30,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("MySQL"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/mysql-original.svg',
                  fit: BoxFit.fitHeight,
                  height: 30,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("Portainer"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/portainer-original.svg',
                  fit: BoxFit.fitHeight,
                  height: 30,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("Postman"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/postman-original.svg',
                  fit: BoxFit.fitHeight,
                  height: 30,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("Selenium"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/selenium-original.svg',
                  fit: BoxFit.fitHeight,
                  height: 30,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("Sentry"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/sentry-original.svg',
                  fit: BoxFit.fitHeight,
                  height: 30,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
            verticalSpaceTiny,
            Row(
              children: [
                const Text("Visual Studio Code"),
                horizontalSpaceTiny,
                SvgPicture.asset(
                  'images/icons/vscode-original.svg',
                  fit: BoxFit.fitHeight,
                  height: 30,
                  semanticsLabel: 'Icono de Flutter',
                  placeholderBuilder: (BuildContext context) =>
                      CircularProgressIndicator(),
                )
              ],
            ),
            verticalSpaceTiny,
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return SimpleAnimationProgressBar(
                height: 30,
                width: constraints.maxWidth,
                backgroundColor: Colors.transparent,
                foregrondColor: kcPrimaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
              );
            }),
          ],
        ),
      ),
    );
  }

  @override
  SkillViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SkillViewModel();
}
