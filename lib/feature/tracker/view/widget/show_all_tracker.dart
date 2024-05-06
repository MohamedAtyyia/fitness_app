import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/feature/add_schdule/view/widget/show_date.dart';
import 'package:vitalvibe/feature/part_fouces/view/part_fouces.dart';
import 'package:vitalvibe/feature/part_fouces/view/widget/item_part_fouces.dart';

class ShowAlltracker extends StatelessWidget {
  const ShowAlltracker({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PartFoucesModel> partFoucesModel = [
      PartFoucesModel(
          title: 'Forearms',
          supTitle: '11 Exercises | 32mins',
          image: AppImageAssets.hend),
      PartFoucesModel(
          title: 'Traps',
          supTitle: '12 Exercises | 40mins',
          image: AppImageAssets.trap),
      PartFoucesModel(
          title: 'Chest',
          supTitle: '11 Exercises | 32mins',
          image: AppImageAssets.chest),
      PartFoucesModel(
          title: 'Triceps',
          supTitle: '12 Exercises | 40mins',
          image: AppImageAssets.tri),
      PartFoucesModel(
          title: 'Lats',
          supTitle: '14 Exercises | 20mins',
          image: AppImageAssets.last),
      PartFoucesModel(
          title: 'Biceps',
          supTitle: '11 Exercises | 32mins',
          image: AppImageAssets.by),
      // PartFoucesModel(title: 'Shoulder', supTitle: '12 Exercises | 40mins', image: AppImageAssets.shoulder),
      // PartFoucesModel(title: 'Abs', supTitle: '12 Exercises | 40mins', image: AppImageAssets.baxs),
      // PartFoucesModel(title: 'Hamstring', supTitle: '12 Exercises | 40mins', image: AppImageAssets.leg),
      // PartFoucesModel(title: 'Quads', supTitle: '11 Exercises | 32mins', image: AppImageAssets.leg2),
      // PartFoucesModel(title: 'Glutes', supTitle: '12 Exercises | 40mins', image: AppImageAssets.gul),
    ];

    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.whiTe,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  50.hs,
                  Showdate(),
                  16.hs,
                  // height: 200,
                  Column(
                    children: partFoucesModel.map((e) => ItemPartFouces(partFoucesModel: e,)).toList(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
    // SliverList(
    //   delegate: SliverChildListDelegate(
    //     [
    //       Container(
    //         width: double.infinity,
    //         decoration: BoxDecoration(
    //           color: AppColor.whiTe,
    //           borderRadius: BorderRadius.only(
    //             topLeft: Radius.circular(50),
    //             topRight: Radius.circular(50),
    //           ),
    //         ),
    //         child: Column(
    //           children: [
    //             SizedBox(height: 50),
    //             // CardTracker(),
    //             // 12.hs,
    //             // ListView.builder(
    //             //     itemCount: 13,
    //             //     physics: NeverScrollableScrollPhysics(),
    //             //     shrinkWrap: true,
    //             //     itemBuilder: (context, idex) => ItemTracker())
    //           ],
    //         ), // يمكنك استبدال YourWidget() بالمحتوى الذي تريد عرضه
    //       ),
    //       // بقية العناصر الأخرى في القائمة
    //     ],
    //   ),
    // );
  }
}
