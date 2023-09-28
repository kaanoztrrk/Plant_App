import 'package:flutter/material.dart';
import 'package:plat_shop/Constant/Theme/ThemeData.dart';

import 'Constant/Const.dart';
import 'Page/StorePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ITheme().defaultTheme,
      title: appName,
      home: const StorePage(),
    );
  }
}
