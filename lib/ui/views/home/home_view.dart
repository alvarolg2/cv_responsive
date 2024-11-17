import 'package:cv_responsive/ui/common/app_colors.dart';
import 'package:cv_responsive/ui/common/app_strings.dart';
import 'package:cv_responsive/ui/views/about_me/about_me_view.dart';
import 'package:cv_responsive/ui/views/education/education_view.dart';
import 'package:cv_responsive/ui/views/experience/experience_view.dart';
import 'package:cv_responsive/ui/views/skill/skill_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    AppLocalizations t = AppLocalizations.of(context)!;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      verticalSpaceSmall,
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              'images/photo.png',
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
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
                                              viewModel.launchInBrowser(
                                                  Uri.parse(github));
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
                            ),
                          )
                        ],
                      ),
                      spacedDivider,
                      TabBar(
                          tabAlignment: TabAlignment.start,
                          isScrollable: true,
                          tabs: [
                            Tab(
                                icon: const FaIcon(FontAwesomeIcons.user),
                                text: t.aboutMe),
                            Tab(
                                icon: const FaIcon(FontAwesomeIcons.briefcase),
                                text: t.experience),
                            Tab(
                                icon: const FaIcon(FontAwesomeIcons.book),
                                text: t.education),
                            Tab(
                                icon: const FaIcon(
                                    FontAwesomeIcons.handshakeAngle),
                                text: t.skills),
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
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<Locale>(
                    value: viewModel.supportedLocales.firstWhere(
                      (locale) =>
                          locale.languageCode ==
                          (viewModel.currentLocale.languageCode),
                      orElse: () => viewModel.supportedLocales.first,
                    ),
                    items: viewModel.supportedLocales.map((locale) {
                      return DropdownMenuItem<Locale>(
                        value: locale,
                        child: Row(
                          children: [
                            Image.asset(
                              viewModel.flags[locale.languageCode]!,
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (Locale? newLocale) {
                      if (newLocale != null) {
                        viewModel.changeLanguage(newLocale);
                      }
                    },
                  ),
                ),
              ),
            ],
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
