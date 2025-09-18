import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';

class InfoListTile extends StatelessWidget {
  const InfoListTile({
    super.key, required this.image, required this.title, required this.subtitle,
  });
final String image,title,subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Text(title,style: AppStyle.styleSemiBold16(context),),
      subtitle: Text(subtitle,style: AppStyle.styleRegular12(context),),
    );
  }
}