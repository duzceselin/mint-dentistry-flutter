import 'package:flutter/material.dart';
import 'package:mint_dentistry/config/color_constants.dart';

// Carousel without autoscroll for images
class Carousel extends StatefulWidget {
  final List<String> carouselImages;

  const Carousel({
    super.key,
    required this.carouselImages,
  });

  @override
  State<Carousel> createState() {
    return _CarouselState();
  }
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;
  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1,
      initialPage: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.6,
          child: PageView.builder(
            itemCount: widget.carouselImages.length,
            pageSnapping: true,
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                activePage = page;
              });
            },
            itemBuilder: (context, pagePosition) {
              bool active = pagePosition == activePage;
              return slider(
                widget.carouselImages,
                pagePosition,
                active,
                context,
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: indicators(
            widget.carouselImages.length,
            activePage,
          ),
        ),
      ],
    );
  }
}

AnimatedContainer slider(
  images,
  pagePosition,
  active,
  context,
) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          images[pagePosition],
        ),
        fit: BoxFit.fill,
      ),
    ),
  );
}

List<Widget> indicators(
  imagesLength,
  currentIndex,
) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 3,
      ),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? LightThemeColors.primary
            : LightThemeColors.dot,
        shape: BoxShape.circle,
      ),
    );
  });
}
