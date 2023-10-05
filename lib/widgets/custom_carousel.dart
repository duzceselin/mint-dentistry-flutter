import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mint_dentistry/config/color_constants.dart';

class AnimatedCarousel extends StatefulWidget {
  const AnimatedCarousel({
    super.key,
    required this.carouselImages,
    this.height,
  });

  final List<String> carouselImages;
  final double? height;

  @override
  State<StatefulWidget> createState() {
    return _AnimatedCarousel();
  }
}

class _AnimatedCarousel extends State<AnimatedCarousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: widget.height ?? MediaQuery.of(context).size.height * 0.6,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
          items: widget.carouselImages.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  // height:
                  //     widget.height ?? MediaQuery.of(context).size.height * 0.6,
                  child: Image.asset(
                    i,
                    fit: BoxFit.fill,
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.carouselImages.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 8,
                height: 8,
                margin: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 3,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == entry.key
                      ? LightThemeColors.primary
                      : LightThemeColors.dot,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
