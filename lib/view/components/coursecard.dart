import 'package:coaching/view/constant/app_style.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffe1e6ff),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Become a UI designer",
                  style: kBold.copyWith(fontSize: 20),
                ),
                const Icon(Icons.favorite_border)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Learn the most usefull skill thesedays",
              style: kMedium.copyWith(color: Color(0xff8388a0)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.watch_later,
                      color: Color(0xff8388a0),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "32h",
                      style: kBold.copyWith(color: actionColor, fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.my_library_books,
                      color: Color(0xff8388a0),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "64 Lessons",
                      style: kBold.copyWith(color: actionColor, fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "4.9",
                      style: kBold.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "⭐ rating",
                      style: kSemiBold.copyWith(),
                    ),
                    Text(
                      "(1.3K reviews)",
                      style: kMedium.copyWith(),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
