import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/on_Boarding/data/models/on_boarding_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomOnBoardingBody extends StatelessWidget {
  CustomOnBoardingBody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          controller: _controller,
          itemCount: onBoardingData.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 290.h,
                  width: 343.w,
                  child: Image.asset(onBoardingData[index].imagePath),
                ),
                Gap(24.h),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotColor: AppColors.grey,
                    activeDotColor: AppColors.deepBrown,
                    dotHeight: 8.h,
                    dotWidth: 10.w,
                  ),
                ),
                Gap(32.h),
                Text(
                  onBoardingData[index].title,
                  style: CustomTextStyles.poppins500style24
                      .copyWith(fontWeight: FontWeight.bold),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                Gap(16.h),
                Text(
                  onBoardingData[index].subTitle,
                  style: CustomTextStyles.poppins300style16,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            );
          }),
    );
  }
}
