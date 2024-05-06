import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/cusotm_sliver_appbar.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/part_fouces/view/widget/item_part_fouces.dart';

class PartFoucesScreen extends StatelessWidget {
  const PartFoucesScreen({super.key});
  static final List<PartFoucesModel> partFoucesModel = [
    PartFoucesModel(title: 'Forearms', supTitle: '11 Exercises | 32mins', image: AppImageAssets.hend),
    PartFoucesModel(title: 'Traps', supTitle: '12 Exercises | 40mins', image: AppImageAssets.trap),
    PartFoucesModel(title: 'Chest', supTitle: '11 Exercises | 32mins', image: AppImageAssets.chest),
    PartFoucesModel(title: 'Triceps', supTitle: '12 Exercises | 40mins', image: AppImageAssets.tri),
    PartFoucesModel(title: 'Lats', supTitle: '14 Exercises | 20mins', image: AppImageAssets.last),
    PartFoucesModel(title: 'Biceps', supTitle: '11 Exercises | 32mins', image: AppImageAssets.by),
    PartFoucesModel(title: 'Shoulder', supTitle: '12 Exercises | 40mins', image: AppImageAssets.shoulder),
    PartFoucesModel(title: 'Abs', supTitle: '12 Exercises | 40mins', image: AppImageAssets.baxs),
    PartFoucesModel(title: 'Hamstring', supTitle: '12 Exercises | 40mins', image: AppImageAssets.leg),
    PartFoucesModel(title: 'Quads', supTitle: '11 Exercises | 32mins', image: AppImageAssets.leg2),
    PartFoucesModel(title: 'Glutes', supTitle: '12 Exercises | 40mins', image: AppImageAssets.gul),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            title: 'Part focus',
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextInfo(
                  title: 'What Do You Want to\n Train?',
                  textStyle: Style.getStyle(
                      color: AppColor.black,
                      context: context,
                      fontWeight: FontWeight.w600,
                      fontsize: 16)),
            ),
          ),
          SliverList.builder(
            
              itemCount: partFoucesModel.length, itemBuilder: (contetx, index) => ItemPartFouces(partFoucesModel: partFoucesModel[index],),)
        ],
      ),
    );
  }

}

class PartFoucesModel{
  final String title ;
  final String supTitle;
  final String image ;

  PartFoucesModel({required this.title, required this.supTitle, required this.image});
}
