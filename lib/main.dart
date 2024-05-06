import 'package:dalel/app/dalel.dart';
import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(const Dalel());
}
