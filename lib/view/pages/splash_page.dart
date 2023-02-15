import 'package:auto_route/auto_route.dart';
import 'package:coaching/view/constant/app_style.dart';
import 'package:coaching/view/constant/assets.dart';
import 'package:flutter/material.dart';

import '../router/app_router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Skip",
                    style: kMedium.copyWith(color: lightColor),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Image.network(
                "https://static.vecteezy.com/system/resources/previews/006/631/150/non_2x/woman-reading-book-girl-holding-textbook-illustration-in-flat-style-literacy-day-concept-vector.jpg",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 7,
                    width: 50,
                    decoration: BoxDecoration(
                        color: actionColor,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 7,
                    width: 50,
                    decoration: BoxDecoration(
                        color: lightColor,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 7,
                    width: 50,
                    decoration: BoxDecoration(
                        color: lightColor,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Learn",
                style: kBold.copyWith(color: actionColor, fontSize: 50),
              ),
              Text(
                "new skills",
                style: kBold.copyWith(color: actionColor, fontSize: 50),
              ),
              Text(
                "With Learnable",
                style: kBold.copyWith(color: actionColor, fontSize: 50),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  context.pushRoute(const HomeRoute());
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: actionColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Geting Started",
                      style: kBold.copyWith(color: bodyColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  "Already have an account? Login",
                  style: kRagular.copyWith(color: actionColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
