import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruitmarketflutter/common/color_extension.dart';
import 'package:fruitmarketflutter/common/common_extension.dart';
import 'package:fruitmarketflutter/common/globls.dart';
import 'package:fruitmarketflutter/screnn/login/onboarding_screnn.dart';

// ignore: camel_case_types
class splashLogin extends StatefulWidget {
  const splashLogin({super.key});

  @override
  State<splashLogin> createState() => _splashLoginState();
}

// ignore: camel_case_types
class _splashLoginState extends State<splashLogin> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    load();
  }

  void load() async {
    await Future.delayed(const Duration(seconds: 2));
    loadNextScreen();
  }

  void loadNextScreen() {
    context.push(OnboardingScrenn());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorExtension.primary,

      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.maxFinite,
            height: context.height,
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/img/mix_fruit_png_11.png',
              width: double.maxFinite,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: context.height * 0.15),
            child: Text(
              Globls.appName,
              style: TextStyle(
                color: ColorExtension.bg,
                fontSize: 45,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
