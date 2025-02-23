import 'package:flutter/material.dart';
import 'package:fruitmarketflutter/common/color_extension.dart';
import 'package:fruitmarketflutter/common/common_extension.dart';

class OnboardingScrenn extends StatefulWidget {
  const OnboardingScrenn({super.key});

  @override
  State<OnboardingScrenn> createState() => _OnboardingScrennState();
}

class _OnboardingScrennState extends State<OnboardingScrenn> {
  List pageArry = [
    {
      'img': 'assets/img/1.png',
      'title': 'E Shopping',
      'subtitle': 'Explore  top organic fruits & grab them',
    },
    {
      'img': 'assets/img/1.png',
      'title': 'Delivery on the way',
      'subtitle': 'Get your order by speed delivery',
    },
    {
      'img': 'assets/img/1.png',
      'title': 'Delivery Arrived',
      'subtitle': 'Order is arrived at your Place',
    },
  ];

  int selecetpage = 0;
  PageController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController();
    controller?.addListener(() {
      selecetpage = (controller?.page)?.toInt() ?? 0;

      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // alignment: Alignment.center,
        children: [
          PageView.builder(
            onPageChanged: (newVal) {
              setState(() {
                selecetpage = newVal;
              });
            },
            itemBuilder: (context, index) {
              var pObj = pageArry[index];
              return Container(
                width: context.width,
                padding: EdgeInsets.symmetric(horizontal: 30),
                margin: EdgeInsets.symmetric(vertical: context.width * 0.25),
                child: Column(
                  children: [
                    Image.asset(
                      pObj['img'],
                      fit: BoxFit.fitWidth,
                      width: context.width,
                      height: context.width,
                    ),
                    Text(
                      pObj['title'],
                      style: TextStyle(
                        color: ColorExtension.primarytext,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      pObj['subtitle'],
                      style: TextStyle(
                        color: ColorExtension.secondarytext,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: pageArry.length,
          ),

          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      pageArry.map((pObj) {
                        var index = pageArry.indexOf(pObj);

                        return Container(
                          width: 9,
                          height: 9,
                          decoration: BoxDecoration(
                            color:
                                selecetpage == index
                                    ? ColorExtension.active
                                    : Colors.transparent,
                            border: Border.all(
                              color: ColorExtension.active,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        );
                      }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
