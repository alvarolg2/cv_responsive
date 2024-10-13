import 'package:cv_responsive/ui/common/app_colors.dart';
import 'package:cv_responsive/ui/common/app_strings.dart';
import 'package:cv_responsive/ui/views/about_me/about_me_view.dart';
import 'package:cv_responsive/ui/views/education/education_view.dart';
import 'package:cv_responsive/ui/views/experience/experience_view.dart';
import 'package:cv_responsive/ui/views/skill/skill_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:cv_responsive/ui/common/ui_helpers.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  verticalSpaceSmall,
                  Row(
                    children: [
                      const Expanded(
                          flex: 1, child: Icon(Icons.account_circle_outlined)),
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  // ALG: evitar overflow si texto es más grande
                                  name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: kcPrimaryColorDark),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          //viewModel.launchInBrowser(Uri.parse("mailto:$email?subject=$subject&body=$body"));
                                          viewModel.launchInBrowser(
                                              Uri.parse("mailto:$email"));
                                        },
                                        icon: const Icon(
                                          Icons.email_outlined,
                                        )),
                                    IconButton(
                                        onPressed: () {
                                          viewModel.launchInBrowser(
                                              Uri.parse('tel:$phone'));
                                        },
                                        icon: const Icon(
                                          Icons.call_outlined,
                                        )),
                                    IconButton(
                                      onPressed: () {
                                        viewModel
                                            .launchInBrowser(Uri.parse(github));
                                      },
                                      icon: const FaIcon(
                                        FontAwesomeIcons.github,
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          viewModel.launchInBrowser(
                                              Uri.parse(linkedin));
                                        },
                                        icon: const FaIcon(
                                            FontAwesomeIcons.linkedin)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  spacedDivider,
                  const TabBar(
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      tabs: [
                        Tab(icon: FaIcon(FontAwesomeIcons.user), text: aboutMe),
                        Tab(
                            icon: FaIcon(FontAwesomeIcons.briefcase),
                            text: experience),
                        Tab(
                            icon: FaIcon(FontAwesomeIcons.book),
                            text: education),
                        Tab(
                            icon: FaIcon(FontAwesomeIcons.handshakeAngle),
                            text: skills),
                      ]),
                  const Expanded(
                    child: TabBarView(children: [
                      AboutMeView(),
                      ExperienceView(),
                      EducationView(),
                      SkillView(),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
