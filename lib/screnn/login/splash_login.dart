import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  void load() async {
    await Future.delayed(const Duration(seconds: 3));
    loadNextScreen();
  }

  void loadNextScreen() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar());
  }
}
