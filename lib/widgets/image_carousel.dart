import 'package:flutter/material.dart';

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
      viewportFraction: 0.8,
      initialPage: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
              );
            },
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
) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          images[pagePosition],
        ),
      ),
    ),
  );
}

imageAnimation(
  PageController animation,
  images,
  pagePosition,
) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);

      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: EdgeInsets.all(10),
      child: Image.asset(
        images[pagePosition],
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
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: currentIndex == index ? Colors.black : Colors.black26,
        shape: BoxShape.circle,
      ),
    );
  });
}
