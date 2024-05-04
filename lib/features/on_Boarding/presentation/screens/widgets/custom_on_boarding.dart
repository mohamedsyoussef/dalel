import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomOnBoardingBody extends StatelessWidget {
  final Image image;
  final String title;
  final String subTitle;
  CustomOnBoardingBody(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          controller: _controller,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                image,
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
                  title,
                  style: CustomTextStyles.poppins500style24
                      .copyWith(fontWeight: FontWeight.bold),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                Gap(16.h),
                Text(
                  subTitle,
                  style: CustomTextStyles.poppins300style16,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ],
            );
          }),
    );
  }
}
