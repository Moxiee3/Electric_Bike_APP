import 'package:electric_bike_app/utils/show_up_animation.dart';
import 'package:electric_bike_app/utils/text_utils.dart';
import 'package:flutter/material.dart';

import '../utils/color_utils.dart';

class ChargingScreen extends StatefulWidget {
  const ChargingScreen({super.key});

  @override
  State<ChargingScreen> createState() => _ChargingScreenState();
}

class _ChargingScreenState extends State<ChargingScreen> {
  var appColors = AppColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              backgroundColor: appColors.bg2,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: appColors.greyColor,
              ),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: appColors.bg2,
        title: TextUtil(
          text: "Charging",
        ),
        actions: [
          CircleAvatar(
            backgroundColor: appColors.cardColor,
            child: Icon(
              Icons.settings_outlined,
              color: appColors.greyColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Hero(
        tag: "Charge",
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appColors.bg,
              boxShadow: [
                BoxShadow(
                    color: appColors.bg.withOpacity(0.3),
                    offset: const Offset(5, 5),
                    blurRadius: 10),
                BoxShadow(
                    color: appColors.bg.withOpacity(0.3),
                    offset: const Offset(-3, -3),
                    blurRadius: 10)
              ]),
          alignment: Alignment.center,
          child: const Icon(
            Icons.electric_bike,
            size: 35,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  ShowUpAnimation(
                      delay: 1500, child: Image.asset("assets/bike.png")),
                  const SizedBox(
                    height: 130,
                  )
                ],
              ),
              ShowUpAnimation(
                delay: 1000,
                child: Container(
                  height: 170,
                  width: 170,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: appColors.blackColor,
                      border: Border.all(
                          color: appColors.bg.withOpacity(0.6), width: 2),
                      boxShadow: [
                        BoxShadow(
                            color: appColors.bg.withOpacity(0.1),
                            offset: const Offset(5, 5),
                            blurRadius: 10),
                        BoxShadow(
                            color: appColors.bg.withOpacity(0.1),
                            offset: const Offset(-5, -5),
                            blurRadius: 10)
                      ]),
                  alignment: Alignment.center,
                  child: Container(
                    height: 170,
                    width: 170,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: appColors.bg,
                        border: Border.all(
                            color: appColors.bg.withOpacity(0.6), width: 2),
                        boxShadow: [
                          BoxShadow(
                              color: appColors.bg.withOpacity(0.4),
                              offset: const Offset(5, 5),
                              blurRadius: 10),
                          BoxShadow(
                              color: appColors.bg.withOpacity(0.4),
                              offset: const Offset(-5, -5),
                              blurRadius: 10)
                        ]),
                    alignment: Alignment.center,
                    child: Container(
                      height: 170,
                      width: 170,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: appColors.blackColor,
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.bolt,
                            size: 35,
                            color: appColors.bg,
                          ),
                          TextUtil(
                            text: "75%",
                            color: appColors.whiteColor,
                            weight: true,
                            size: 22,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: Stack(
            children: [
              ShowUpAnimation(
                delay: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        SmallText(
                          text: "Range",
                        ),
                        Row(
                          children: [
                            MediumText(
                              text: "120",
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SmallText(
                              text: "Kms",
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SmallText(
                          text: "Range",
                        ),
                        Row(
                          children: [
                            MediumText(
                              text: "120",
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SmallText(
                              text: "Kms",
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              ShowUpAnimation(
                delay: 300,
                child: Center(
                  child: Container(
                    width: 7,
                    margin: const EdgeInsets.only(bottom: 50),
                    decoration: BoxDecoration(
                        color: appColors.bg,
                        border: Border.all(
                            color: appColors.bg.withOpacity(0.6), width: 2),
                        boxShadow: [
                          BoxShadow(
                              color: appColors.bg.withOpacity(0.4),
                              offset: const Offset(5, 5),
                              blurRadius: 10),
                          BoxShadow(
                              color: appColors.bg.withOpacity(0.4),
                              offset: const Offset(-5, -5),
                              blurRadius: 10)
                        ]),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
