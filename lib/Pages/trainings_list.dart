import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/colors.dart';

class TrainingsList extends StatefulWidget {
  const TrainingsList({Key? key}) : super(key: key);

  @override
  _TrainingsListState createState() => _TrainingsListState();
}

class _TrainingsListState extends State<TrainingsList> {

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height + 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.gradientFirst.withOpacity(0.9),
              AppColors.gradientSecond
            ], begin: const FractionalOffset(0.0, 0.5), end: Alignment.topRight),
          ),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: statusBarHeight + 30, left: 10, right: 10),
                child: Row(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.all(0.0),
                      icon: const Icon(Icons.arrow_back_ios, size: 20),
                      color: AppColors.secondPageIconColor.withOpacity(0.7),
                      onPressed: () {
                        //TODO: Add Action later
                        Get.back();
                      },
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      padding: const EdgeInsets.all(0.0),
                      icon: const Icon(
                        Icons.info_outline_rounded,
                        size: 20,
                      ),
                      color: AppColors.secondPageIconColor.withOpacity(0.7),
                      onPressed: () {
                        //TODO: Add Action later
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                    top: 0, left: 24, right: 24, bottom: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Text(
                          "Legs Toning \nand Glutes Workout",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: AppColors.secondPageTitleColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  AppColors.secondPageContainerGradFirstColor,
                                  AppColors.loopColor.withOpacity(0.5),
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.info_outline_rounded,
                                  size: 20, color: AppColors.secondPageIconColor),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "68 min",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.secondPageIconColor),
                              )
                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  AppColors.secondPageContainerGradFirstColor
                                      .withOpacity(0.8),
                                  AppColors.loopColor.withOpacity(0.5),
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.handyman,
                                  size: 20, color: AppColors.secondPageIconColor),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Resistant band, Kettlebell",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.secondPageIconColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                    color: AppColors.homePageBackground,
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(50)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Circuit 1 : Legs Toning",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.circuitsColor,
                            ),
                          ),
                          Expanded(child: Container()),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.loop),
                                iconSize: 20,
                                color: AppColors.loopColor,
                                padding: const EdgeInsets.all(0),
                                onPressed: () {
                                  //TODO: Add Action Later...
                                },
                              ),
                              Text(
                                "3 Sets",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.setsColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
