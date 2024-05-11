import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/back_bottom.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class Comparsation extends StatelessWidget {
  const Comparsation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiTe,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: BackBottom(),
        ),
        centerTitle: true,
        title: TextInfo(
          title: 'Comparison',
          textStyle: Style.getStyle(
            color: AppColor.black,
            context: context,
            fontWeight: FontWeight.w600,
            fontsize: 16,
          ),
        ),
      ),
      body: Column(
        children: [
          12.hs,
          _buildListTile(context),
          12.hs,
          _buildListTile(context)


          // _buildListTile(context),
          // 12.hs,
          // _buildListTile(context)
        ],
      ),
    );
  }

  Container _buildListTile(BuildContext context) {
    return  Container(
            margin: EdgeInsets.symmetric(vertical: 0,horizontal: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffF7F8F8)),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  size: 24,
                ),
                12.ws,
                TextInfo(
                  title: 'Month',
                  textStyle: Style.getStyle(
                    color: AppColor.grey,
                    context: context,
                    fontWeight: FontWeight.w400,
                    fontsize: 12,
                  ),
                ),
                Spacer(flex: 1),
                TextInfo(
                    title: 'May',
                    textStyle: Style.getStyle(
                        color: AppColor.grey,
                        context: context,
                        fontWeight: FontWeight.w400,
                        fontsize: 10)),
                        6.ws,
                Icon(FontAwesomeIcons.chevronRight,size: 16,),
              ],
            ),
          );
  }
}
