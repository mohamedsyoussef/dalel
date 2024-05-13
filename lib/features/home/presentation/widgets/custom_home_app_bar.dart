import 'package:dalel/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SvgPicture.asset(Assets.assetsImagesMenBar),
      Text(
        'Dalel',
        style: CustomTextStyles.pacifico400style64.copyWith(fontSize: 22.sp),
      )
    ]);
  }
}
