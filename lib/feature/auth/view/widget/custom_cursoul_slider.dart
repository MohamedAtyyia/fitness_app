import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vitalvibe/feature/auth/view/widget/item_page_view.dart';

class CustomCursulSlider extends StatelessWidget {
  const CustomCursulSlider({super.key});
  static final List<String> title = ['Lose weight', "Gain weight"];
  static final List<String> subTitle = [
    "The loss will be half a kilo per week",
    'The increase will be half a kilo per week',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 2,
      options: CarouselOptions(
        scrollPhysics: BouncingScrollPhysics(),
        enableInfiniteScroll: false,
        height: MediaQuery.sizeOf(context).height * .6,
        enlargeCenterPage: true,
      ),
      itemBuilder: ((context, index, realIndex) => ItemPageView(
            title: title[index],
            subTitle: subTitle[index],
          )),
    );
  }
}
