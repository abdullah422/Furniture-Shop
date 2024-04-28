import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';

class ButtonNavigationButton extends StatelessWidget {
  const ButtonNavigationButton({super.key, required this.selected, required this.icon, required this.action});

  final bool selected;
  final IconData icon;
  final VoidCallback action;



  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:action,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
      ),
      child: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selected? kScaffoldColor:kBlackColor,
        ),
        height: 58,
        width: 58,
        child: Icon(
          icon,
          size: 35,
          color:selected ?kPrimaryColor:Colors.grey,
        ),
      ),
    );
  }
}
