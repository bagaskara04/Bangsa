import 'package:bangsa/add_screen.dart';
import 'package:bangsa/bookmark_screen.dart';
import 'package:bangsa/popular_screen.dart';
import 'package:bangsa/product_detail.dart';
import 'package:bangsa/product_screen.dart';
import 'package:bangsa/profile_screen.dart';
import 'package:bangsa/utils/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'intro_screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes(),
      home: SplashScreen(),
    );
  }
}

