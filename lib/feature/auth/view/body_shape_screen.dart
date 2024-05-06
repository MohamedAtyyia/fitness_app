import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/auth/view/widget/item_shap_body.dart';

class BodyShapeScreen extends StatelessWidget {
  const BodyShapeScreen({super.key});
  static final  List<BodyShapeModel> bodyShapeModel = [ 
    BodyShapeModel(title: '3-4%', image: AppImageAssets.image1, id: 1),
    BodyShapeModel(title: '6-7%', image: AppImageAssets.image2, id: 2),
    BodyShapeModel(title: '10-12%', image: AppImageAssets.image33, id: 3),
    BodyShapeModel(title: '15%', image: AppImageAssets.image4, id: 4),
    BodyShapeModel(title: '20%', image: AppImageAssets.image5, id: 5),
    // BodyShapeModel(title: '25%', image: AppImageAssets.image6, id: 6),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          
          children: [
            Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 10),
                        child: Center(
                          child: TextInfo(
                            title: 'What is your body shape ?',
                            textStyle: Style.getStyle(
                                color: AppColor.black,
                                context: context,
                                fontWeight: FontWeight.w700,
                                fontsize: 16),
                          ),
                        ),
                      ),
            Expanded(
              child: ListView.builder(
                itemCount: bodyShapeModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return ItemShapBody(bodyShapeModel: bodyShapeModel[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class BodyShapeModel{
  final String title;
  final String image;
  final int id ;

  BodyShapeModel({required this.title, required this.image, required this.id});
  
}