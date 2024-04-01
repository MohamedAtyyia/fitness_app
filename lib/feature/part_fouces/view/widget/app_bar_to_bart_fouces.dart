import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';

class AppBarToPartFouces extends StatelessWidget {
  const AppBarToPartFouces({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      pinned: true,
      expandedHeight: MediaQuery.of(context).size.height * .3,
      backgroundColor: Color(0xff90CDF4),
      flexibleSpace: FlexibleSpaceBar(
         stretchModes: const [StretchMode.zoomBackground],
        expandedTitleScale: 2,
        title: Text(
          'Chest-Triceps Routine',
          style: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
        ),
        background:          Image.asset(AppImageAssets.legTest),
      )
    );
  }
}