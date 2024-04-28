import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: currentPage == 0,
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: TextButton(
            child: Text(
              'Skip',
              style: TextStyle(fontSize: 18, color: kPrimaryColor),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
