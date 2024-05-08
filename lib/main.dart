import 'package:dalel/app/dalel_app.dart';
import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/functions/check_auth_state_changes.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await getIt<CacheHelper>().init();
  checkAuthStateChanges();
  runApp(const Dalel());
}
