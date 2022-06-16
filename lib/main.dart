import 'package:e_purse/screens/landing_screen.dart';
import 'package:flutter/material.dart';

import 'utils/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              title: 'E-Purse',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.purple,
                scaffoldBackgroundColor: Colors.white,
                fontFamily: 'Gilroy'
              ),
              home: const LandingScreen(),
            );
          }
        );
      }
    );
  }
}