import 'package:coaching/view/components/mentorcard.dart';
import 'package:coaching/view/constant/app_style.dart';
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
                      itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: MentorCard(),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
