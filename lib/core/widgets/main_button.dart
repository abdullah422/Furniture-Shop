import 'package:flutter/material.dart';
import 'package:furniture_shop/core/utils/styles.dart';

import '../../constant.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.textButton, required this.action});

  final String textButton;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: action,
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.058,
          decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Center(
            child: Text(
              textButton,
              style: Styles.tSMainButton,
            ),
          ),
        ));
  }
}
