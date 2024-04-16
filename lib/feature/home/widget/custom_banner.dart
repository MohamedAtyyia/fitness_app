


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vitalvibe/feature/home/widget/item_banner.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return 



    SliverToBoxAdapter(
    child: CarouselSlider.builder(
        options: CarouselOptions(
          
          autoPlay: true,
              height: 340,
          viewportFraction: 1.0, 
        ),
        itemCount: 6,
        itemBuilder: (context, index, indextow) => ItemBanner()),
  );
  }

  

}
