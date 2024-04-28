import 'package:flutter/material.dart';
class NativeClipper extends CustomClipper<Path> {
  final BuildContext context;

  NativeClipper({ required this.context});
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);
    path.lineTo(0, size.height - MediaQuery.of(context).size.height *0.08);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - MediaQuery.of(context).size.height *0.08);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}