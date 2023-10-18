import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mint_dentistry/config/color_constants.dart';
import 'package:mint_dentistry/config/image_constants.dart';
import 'package:mint_dentistry/widgets/animatedViews/custom_carousel.dart';
import 'package:mint_dentistry/widgets/buttons/primary_round_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnboardingLandingScreen extends StatefulWidget {
  @override
  State<OnboardingLandingScreen> createState() {
    return _OnboardingLandingScreen();
  }
}

class _OnboardingLandingScreen extends State<OnboardingLandingScreen> {
  List<String> images = [
    AllImages().onboardingImage1,
    AllImages().onboardingImage2,
    AllImages().onboardingImage3,
  ];

  void onContinueTap(BuildContext context) {
    context.go("/companyPolicies");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                AnimatedCarousel(
                  carouselImages: images,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 72,
                    bottom: 60,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 40,
                        ),
                        child: PrimaryRoundButton(
                          title: AppLocalizations.of(context)!.continueBtn,
                          onPressed: () {
                            onContinueTap(context);
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.haveAnAccount,
                            style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: LightThemeColors.bodyDark,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              AppLocalizations.of(context)!.signIN,
                              style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: LightThemeColors.primary,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
