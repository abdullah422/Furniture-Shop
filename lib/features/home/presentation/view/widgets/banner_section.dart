import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';

class BannerSection extends StatefulWidget {
  BannerSection({super.key});

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  final List<String> banners = [
    'assets/images/banner1.jpg',
    'assets/images/banner3.jpg'
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        CarouselSlider(
        carouselController: _controller,
          items: banners
              .map((e) => ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(e),
                          fit: BoxFit.fill
                        ),
                        color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ))
              .toList(),
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            viewportFraction: 1.0,
            aspectRatio: 1/2,
            height: 170,
            autoPlay: true,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(seconds: 1),
            autoPlayCurve: Curves.easeInBack,
            scrollDirection: Axis.horizontal,
            pageSnapping: true,
            padEnds: true,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.006,),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: banners.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 11,
                  height: 11,
                  margin: EdgeInsets.only(
                      left: 6, right: 6, top: 5, bottom: 0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme
                          .of(context)
                          .brightness == Brightness.dark
                          ? Colors.white
                          : kPrimaryColor)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
