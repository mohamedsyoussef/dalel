import 'package:dalel/app/dalel.dart';
import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const Dalel());
}
