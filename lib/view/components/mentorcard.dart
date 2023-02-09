import 'package:coaching/view/constant/app_style.dart';
import 'package:flutter/material.dart';

class MentorCard extends StatelessWidget {
  const MentorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      decoration: const BoxDecoration(
        color: Color(0xffffe8e9),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  child: const Image(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Antor paul",
                        style: kBold.copyWith(fontSize: 20),
                      ),
                      Text(
                        "Ux Designer",
                        style: kSemiBold.copyWith(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            " ❤️ 22 Courses",
                            style: kMedium.copyWith(fontSize: 15),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Container(
                            height: 40,
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
