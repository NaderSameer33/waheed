import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/home/pages/home/presentation/widgets/home_indecator.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  final _list = [
    'slider.png',
    'slider2.png',
    'slider3.png',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _list
              .map(
                (sliderImage) => AppImage(
                  image: sliderImage,
                  fit: BoxFit.fill,
                ),
              )
              .toList(),
          options: CarouselOptions(
            onPageChanged: (index, _) {
              currentIndex = index;
              setState(() {});
            },

            autoPlayInterval: Duration(seconds: 3),
            viewportFraction: 1,
            autoPlay: true,
            aspectRatio: 370.w / 200.h,
          ),
        ),
        12.vs,
        HomeIndecator(
          currentIndex: currentIndex,
        ),
        17.vs,
      ],
    );
  }
}
