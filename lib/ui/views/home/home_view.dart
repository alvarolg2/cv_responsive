import 'package:cv_responsive/ui/common/app_colors.dart';
import 'package:cv_responsive/ui/common/app_strings.dart';
import 'package:cv_responsive/ui/views/about_me/about_me_view.dart';
import 'package:cv_responsive/ui/views/education/education_view.dart';
import 'package:cv_responsive/ui/views/experience/experience_view.dart';
import 'package:cv_responsive/ui/views/skill/skill_view.dart';
import 'package:flutter/material.dart';
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
                                  name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        //viewModel.launchInBrowser(Uri.parse("mailto:$email?subject=$subject&body=$body"));
                                        viewModel.launchInBrowser(Uri.parse("mailto:$email"));
                                      },
                                      icon: const Icon(Icons.email_outlined,
                                          color: kcPrimaryColorDark)),
                                    IconButton(
                                      onPressed: () {
                                        viewModel.launchInBrowser(Uri.parse(
                                            'tel:$phone'));
                                      },
                                      icon: const Icon(
                                        Icons.call_outlined,
                                        color: kcPrimaryColorDark,
                                      )),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.zoom_in_map,
                                          color: kcPrimaryColorDark)),
                                    IconButton(
                                      onPressed: () {
                                        //viewModel.launchInBrowser(Uri.parse("mailto:$email?subject=$subject&body=$body"));
                                        viewModel.launchInBrowser(Uri.parse("mailto:$email"));

                                      },
                                      icon: const Icon(Icons.zoom_in_map,
                                          color: kcPrimaryColorDark)),
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
                    isScrollable: true, 
                    tabs: [
                      Tab(
                        icon: Icon(Icons.abc), 
                        text: aboutMe
                      ),
                      Tab(
                        icon: Icon(Icons.work_outline), 
                        text: experience
                      ),
                      Tab(
                        icon: Icon(Icons.cast_for_education_outlined),
                        text: education
                      ),
                      Tab(
                        icon: Icon(Icons.add_circle_outlined), 
                        text: skills
                      ),
                    ]
                  ),
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
