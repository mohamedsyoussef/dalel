import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: AppStrings.visitedOnBoardng, value: true);
}
