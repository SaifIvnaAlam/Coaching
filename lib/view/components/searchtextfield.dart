import 'package:coaching/view/constant/app_style.dart';
import 'package:flutter/material.dart';

class PrimarySearch extends StatelessWidget {
  const PrimarySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 3,
          offset: const Offset(0, 7), // changes position of shadow
        ),
      ], color: contrastColor, borderRadius: BorderRadius.circular(20)),
      width: 300,
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.mic,
              color: actionColor,
              size: 30,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: actionColor,
              size: 30,
            ),
            hintStyle: kRagular.copyWith(color: lightColor),
            hintText: "Search Courses, mentors,etc",
          ),
        ),
      ),
    );
  }
}
