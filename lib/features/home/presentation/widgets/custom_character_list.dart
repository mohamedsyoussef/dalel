import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';

class CustomCharacterList extends StatelessWidget {
  const CustomCharacterList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 77.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: AppColors.offWhite,
                boxShadow: [
                  BoxShadow(
                      color:
                          AppColors.deepGrey.withOpacity(0.5), // Shadow color
                      spreadRadius: 0.r, // Spread radius
                      blurRadius: 5.r,
                      offset: const Offset(0, 7) // Blur radius
                      )
                ]),
            margin: EdgeInsets.only(right: 16.h),
            width: 74.w,
            height: 133.h,
            child: Column(
              children: [
                const Text('Hello'),
                Gap(24.h),
                const Text('World'),
              ],
            ),
          );
        },
      ),
    );
  }
}
