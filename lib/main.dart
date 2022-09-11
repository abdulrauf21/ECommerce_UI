import 'package:flutter/material.dart';
import 'package:testapp/UI%20design%20creations/ecommerce_page2.dart';
import 'package:testapp/ui_design_creations/dashboard.dart';
import 'screens/Splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Dashboard()
    );
  }
}

 