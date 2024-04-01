import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/auth/view/widget/item_shap_body.dart';

class BodyShapeScreen extends StatelessWidget {
  const BodyShapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
     
        body: SingleChildScrollView(
          child: Column(
            children: [
              50.hs,
              TextInfo(
                  title: 'What is your body shape ?',
                  textStyle:  Style.getStyle(color: AppColor.black,
                 context: context, fontWeight: FontWeight.w700,
                  fontsize: 16),),
              25.hs,
              AnimationLimiter(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 12,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      delay: const Duration(milliseconds: 500),
                      child: SlideAnimation(
                        duration: Duration(milliseconds: 2500),
                        curve: Curves.easeInOutCubicEmphasized,
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                            curve: Curves.easeInOutCubicEmphasized,
                            duration: Duration(milliseconds: 2500),
                            child: ItemShapBody()),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
