import 'package:flutter/material.dart';

import '../constant/app_style.dart';

class CourseCategory extends StatelessWidget {
  const CourseCategory(
      {super.key, this.type = ButtonType.selected, required this.text});
  final String text;
  final ButtonType type;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
            width: 2,
            color: type == ButtonType.selected ? actionColor : actionColor),
        color: type == ButtonType.selected ? actionColor : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            text,
            style: kMedium.copyWith(
                color:
                    type == ButtonType.selected ? Colors.white : actionColor),
          ),
        ),
      ),
    );
  }
}

enum ButtonType { selected, notselected }
