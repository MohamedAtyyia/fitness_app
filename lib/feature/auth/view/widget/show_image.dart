import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(AppImageAssets.firstPartImage),
        Image.asset(AppImageAssets.secondPartImage),
        
      ],
    );
  }
}