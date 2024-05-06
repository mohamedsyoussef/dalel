import 'package:dalel/app/dalel.dart';
import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  runApp(const Dalel());
}
