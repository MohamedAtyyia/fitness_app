import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(AppImageAssets.firstPartImage),
        Positioned(
          right: 50,
          left: 0,
          child: Image.asset(AppImageAssets.secondPartImage)),
        
      ],
    );
  }
}