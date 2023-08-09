import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kavin_mart/Screens/home_screen.dart';
import 'package:kavin_mart/Screens/login_screen.dart';
import 'package:kavin_mart/Screens/orders_user.dart';
import 'package:kavin_mart/Screens/splash.dart';

import 'Screens/navigation_page.dart';
import 'firebase_options.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}