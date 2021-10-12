import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_app/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List trainings = [];

  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      trainings = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            //top bar (Navigation and all)
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                      fontSize: 30,
                      color: AppColors.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: AppColors.homePageIcons,
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: AppColors.homePageIcons,
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: AppColors.homePageIcons,
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            //section header title (Your program)
            Row(
              children: [
                Text(
                  "Your program",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: AppColors.homePageSubtitle),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style:
                      TextStyle(fontSize: 17, color: AppColors.homePageDetail),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: AppColors.homePageIcons,
                )
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            //UP next section
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              padding: const EdgeInsets.only(
                  left: 15, bottom: 20, right: 15, top: 20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(80)),
                gradient: LinearGradient(colors: [
                  AppColors.gradientFirst.withOpacity(0.75),
                  AppColors.gradientSecond.withOpacity(0.85)
                ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(5, 10),
                      blurRadius: 15,
                      color: AppColors.gradientSecond.withOpacity(0.2))
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Next workout",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: AppColors.homePageContainerTextSmall,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Legs Toning \nand Glutes Workout",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: AppColors.homePageContainerTextSmall,
                    ),
                  ),
                  Expanded(child: Container()),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.access_alarm_outlined,
                        size: 20,
                        color: AppColors.homePageContainerTextSmall,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "60 Mins",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: AppColors.homePageContainerTextSmall,
                        ),
                      ),
                      Expanded(child: Container()),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70 / 2),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      AppColors.gradientFirst.withOpacity(0.3),
                                  blurRadius: 10,
                                  offset: const Offset(4, 8))
                            ]),
                        child: IconButton(
                          padding: const EdgeInsets.all(0),
                          icon: Icon(
                            Icons.play_circle_fill,
                            color: AppColors.homePageContainerTextSmall,
                          ),
                          iconSize: 55,
                          onPressed: () {
                            //TODO: Add Action latter
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            //Motivation section
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(-2, -5),
                    blurRadius: 15,
                    color: AppColors.gradientSecond.withOpacity(0.2),
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                    child: Image.asset("assets/figure_2.png"),
                  ),
                  const SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You are doing great",
                          style: TextStyle(
                            color: AppColors.homePageDetail,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Keep it up \nand stick to your plan!",
                          style: TextStyle(
                              color: AppColors.homePagePlanColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            //Header of list section....
            Row(
              children: [
                Text(
                  "Area of focus",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: AppColors.homePageSubtitle),
                )
              ],
            ),

            //List section
            Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.only(top: 30, bottom: 50),
                    itemCount: ((trainings.length ~/ 2).toInt() +
                        (trainings.length % 2)),
                    itemBuilder: (_, i) {
                      int firstId = 2 * i;
                      int secondId = 2 * i + 1;
                      double itemWidth = (MediaQuery.of(context).size.width-90) / 2 ;
                      
                      return Row(
                        children: [
                          Container(
                            width: itemWidth,
                            height: 160,
                            padding: const EdgeInsets.only(bottom: 10),
                            margin: const EdgeInsets.only(left: 5, bottom: 15, right: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(trainings[firstId]['img']),
                                  scale: 10,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      offset: const Offset(3, 3),
                                      color: AppColors.gradientSecond
                                          .withOpacity(0.1),
                                      blurRadius: 3),
                                  BoxShadow(
                                      offset: const Offset(-3, -3),
                                      color: AppColors.gradientSecond
                                          .withOpacity(0.1),
                                      blurRadius: 3),
                                ],
                              ),
                            child: Center(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  trainings[firstId]['title'],
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: AppColors.homePageDetail,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          
                          Container(
                            width: itemWidth,
                            height: 160,
                            padding: const EdgeInsets.only(bottom: 10),
                            margin: const EdgeInsets.only(left: 5, bottom: 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(trainings[secondId]['img']),
                                  scale: 10,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      offset: const Offset(3, 3),
                                      color: AppColors.gradientSecond
                                          .withOpacity(0.1),
                                      blurRadius: 3),
                                  BoxShadow(
                                      offset: const Offset(-3, -3),
                                      color: AppColors.gradientSecond
                                          .withOpacity(0.1),
                                      blurRadius: 3),
                                ]),
                            child: Center(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  trainings[secondId]['title'],
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: AppColors.homePageDetail,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
