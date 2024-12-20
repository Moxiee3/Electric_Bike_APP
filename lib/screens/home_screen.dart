import 'package:electric_bike_app/utils/color_utils.dart';
import 'package:electric_bike_app/utils/text_utils.dart';
import 'package:flutter/material.dart';

import 'charging_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var appColors = AppColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: appColors.bg2,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextUtil(
              text: "Hello!",
              size: 20,
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: appColors.cardColor,
            child: Icon(
              Icons.grid_view,
              color: appColors.greyColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ChargingScreen()));
        },
        child: Hero(
          tag: "Charge",
          child: Container(
            height: 80,
            width: 80,
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 200,
                  width: 90,
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: appColors.cardColor,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 140,
                    width: 90,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: appColors.bg,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextUtil(
                          text: "75%",
                          color: appColors.blackColor,
                          weight: true,
                          size: 22,
                        ),
                        TextUtil(
                          text: "Charging",
                          color: appColors.blackColor,
                          size: 12,
                          weight: true,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      height: 90,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: appColors.cardColor,
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SmallText(
                                  text: "Kms Driven",
                                ),
                                Row(
                                  children: [
                                    MediumText(
                                      text: "1234",
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
                          ),
                          Center(
                            child: RotatedBox(
                                quarterTurns: 1,
                                child: Icon(
                                  Icons.route,
                                  color: appColors.bg,
                                  size: 40,
                                )),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 90,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: appColors.cardColor,
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          ),
                          Center(
                            child: Icon(
                              Icons.motorcycle,
                              color: appColors.bg,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          height: 90,
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: appColors.cardColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.lock_open_rounded,
                                color: appColors.bg,
                                size: 40,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SmallText(
                                text: "Unlock",
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Container(
                          height: 90,
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: appColors.cardColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.local_gas_station_outlined,
                                color: appColors.bg,
                                size: 40,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SmallText(
                                text: "Start Charging",
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: appColors.greyColor,
                    ),
                    Icon(
                      Icons.arrow_back_ios,
                      color: appColors.lightGreyColor,
                    ),
                    CircleAvatar(
                      radius: 23,
                      backgroundColor: appColors.lightGreyColor,
                      child: Icon(
                        Icons.key,
                        color: appColors.blackColor,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: appColors.lightGreyColor,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: appColors.greyColor,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 90,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: appColors.cardColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: appColors.greyColor),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.groups_outlined,
                          color: appColors.bg,
                          size: 40,
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    SmallText(
                      text: "Update Your Experience",
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 90,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: appColors.cardColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: appColors.greyColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.alarm,
                        color: appColors.bg,
                        size: 40,
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  SmallText(
                    text: "Service Reminder!",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 90,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: appColors.cardColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: appColors.greyColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.location_on,
                        color: appColors.bg,
                        size: 40,
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  SmallText(
                    text: "View Location",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
