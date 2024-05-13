import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomHorizontalListView extends StatelessWidget {
  const CustomHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: AppColors.offWhite,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1), // Shadow color
                    spreadRadius: 0.r, // Spread radius
                    blurRadius: 5.r, // Blur radius
                  )
                ]),
            margin: EdgeInsets.only(right: 16.h),
            width: 164.w,
            height: 96.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
