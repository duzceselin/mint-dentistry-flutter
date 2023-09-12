import 'package:flutter/material.dart';
import 'package:mint_dentistry/config/image_constants.dart';
import 'package:mint_dentistry/widgets/image_carousel.dart';

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
    return Scaffold(
      body: Carousel(
        carouselImages: images,
      ),
    );
  }
}
