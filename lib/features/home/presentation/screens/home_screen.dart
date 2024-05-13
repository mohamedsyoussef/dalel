import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../core/widgets/app_titles.dart';
import '../../../../core/widgets/custom_horizontal_list_view.dart';
import '../widgets/custom_home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: Gap(28.h)),
              const SliverToBoxAdapter(child: CustomHomeAppBar()),
              SliverToBoxAdapter(child: Gap(32.h)),
              const SliverToBoxAdapter(
                  child: AppTitles(title: 'Historical periods')),
              SliverToBoxAdapter(child: Gap(16.h)),
              const SliverToBoxAdapter(
                child: CustomHorizontalListView(),
              )
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.offWhite,
    );
  }
}
