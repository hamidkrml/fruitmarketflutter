import 'package:flutter/material.dart';
import 'package:fruitmarketflutter/common/color_extension.dart';
import 'package:fruitmarketflutter/common/globls.dart';
import 'package:fruitmarketflutter/screnn/login/splash_login.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Globls.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorExtension.primary),
        useMaterial3: true,
        appBarTheme: AppBarTheme(color: ColorExtension.primary, elevation: 0),
      ),
      home: const splashLogin(),
    );
  }
}
