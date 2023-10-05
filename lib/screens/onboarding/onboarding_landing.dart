import 'package:flutter/material.dart';
import 'package:mint_dentistry/config/color_constants.dart';
import 'package:mint_dentistry/config/image_constants.dart';
import 'package:mint_dentistry/widgets/custom_carousel.dart';
import 'package:mint_dentistry/widgets/primary_round_button.dart';

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
                          title: 'Continue',
                          onPressed: () {},
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have An Account?",
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
                              "Sign In",
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
