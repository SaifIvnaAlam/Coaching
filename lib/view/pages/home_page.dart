import 'package:auto_route/auto_route.dart';
import 'package:coaching/view/components/coursecard.dart';
import 'package:coaching/view/components/coursecategory.dart';
import 'package:coaching/view/components/mentorcard.dart';
import 'package:coaching/view/constant/app_style.dart';
import 'package:coaching/view/router/app_router.gr.dart';
import 'package:flutter/material.dart';

import '../components/searchtextfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bodyColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "What would you like",
                  style: kBold.copyWith(color: actionColor, fontSize: 35),
                ),
                Text(
                  "to learn today?",
                  style: kBold.copyWith(color: actionColor, fontSize: 35),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const PrimarySearch(),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: const Offset(
                                0, 7), // changes position of shadow
                          ),
                        ],
                        color: contrastColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: 50,
                      child: const Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Menotors",
                      style: kBold.copyWith(color: actionColor, fontSize: 25),
                    ),
                    Row(
                      children: [
                        Text(
                          "Trending",
                          style:
                              kBold.copyWith(color: actionColor, fontSize: 15),
                        ),
                        const Icon(Icons.arrow_drop_down_rounded)
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: SizedBox(
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            context.pushRoute(const MentorRoute());
                          },
                          child: MentorCard(),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Courses",
                      style: kBold.copyWith(color: actionColor, fontSize: 25),
                    ),
                    Row(
                      children: [
                        Text(
                          "Popular",
                          style:
                              kBold.copyWith(color: actionColor, fontSize: 15),
                        ),
                        const Icon(Icons.arrow_drop_down_rounded)
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CourseCategory(
                            type: ButtonType.selected, text: "Design"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CourseCategory(
                            type: ButtonType.notselected, text: "Coding"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CourseCategory(
                            type: ButtonType.notselected, text: "Development"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CourseCategory(
                            type: ButtonType.notselected, text: "Python"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CourseCard(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CourseCard(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CourseCard(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CourseCard(),
                        ),
                      ])),
                )
              ],
            ),
          ),
        ));
  }
}
