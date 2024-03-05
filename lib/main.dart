import 'package:aellpr/controllers/init_controller.dart';
import 'package:aellpr/configurations/theme/app_theme.dart';
import 'package:aellpr/firebase_options.dart';
import 'package:aellpr/view/intro_screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  //-- flutter widget binding
  WidgetsFlutterBinding.ensureInitialized();

  //-- flutter initialize
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  //-- Getx controller initializations
  await initDependecies();

  //-- initialize Get storage
  await GetStorage.init();

  //-- run app
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
    theme: customTheme,
  ));
}
