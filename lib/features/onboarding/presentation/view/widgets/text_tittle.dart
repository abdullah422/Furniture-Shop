import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class TextTittle extends StatelessWidget {
   TextTittle({super.key, required this.currentPage});

  final int currentPage;
  final List<Widget> textWidgets = [
    RichText(
      textAlign: TextAlign.center,
      maxLines: 2,
      text: const TextSpan(
        text: 'Seamless ',
        style: TextStyle(
            color: kPrimaryColor, fontSize: 24, fontWeight: FontWeight.w700),
        children: <TextSpan>[
          TextSpan(
              text: 'Shopping Experience',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.black)),
        ],
      ),
    ),
    RichText(
      textAlign: TextAlign.center,
      maxLines: 2,
      text: const TextSpan(
        text: '',
        children: <TextSpan>[
          TextSpan(
            text: 'Wishlist: Where your',
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          TextSpan(
            text: '\n Home\'s Dreams ',
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 26,
                fontWeight: FontWeight.w700),
          ),
          TextSpan(
            text: 'Begin',
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ],
      ),
    ),
    RichText(
      textAlign: TextAlign.center,
      maxLines: 2,
      text: const TextSpan(
        text: '',
        children: <TextSpan>[
          TextSpan(
            text: 'Swift ',
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 26,
                fontWeight: FontWeight.w700),
          ),
          TextSpan(
            text: 'and ',
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          TextSpan(
            text: '\nDelivery',
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ],
      ),
    ),
    RichText(
      textAlign: TextAlign.center,
      maxLines: 2,
      text: const TextSpan(
        text: '',
        children: <TextSpan>[
          TextSpan(
            text: 'The Furniture App ',
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 26,
                fontWeight: FontWeight.w700),
          ),
          TextSpan(
            text: 'that\nElevates Your Home',
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: Colors.black),
          ),

        ],
      ),
    ),


  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.7,
        child: textWidgets[currentPage]);
  }
}
