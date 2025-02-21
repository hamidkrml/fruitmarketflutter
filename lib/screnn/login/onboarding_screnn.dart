import 'package:flutter/material.dart';
import 'package:fruitmarketflutter/common/color_extension.dart';

class OnboardingScrenn extends StatefulWidget {
  const OnboardingScrenn({super.key});

  @override
  State<OnboardingScrenn> createState() => _OnboardingScrennState();
}

class _OnboardingScrennState extends State<OnboardingScrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello',
          style: TextStyle(color: ColorExtension.primarytext, fontSize: 25),
        ),
      ),
    );
  }
}
