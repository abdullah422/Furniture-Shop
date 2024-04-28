import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class PageTittle extends StatelessWidget {

  const PageTittle({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Center(
           child: Text(
            title,
            style: Styles.textStyle2,
                   ),
         ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.016),
         Text(
          subtitle,
          style: Styles.textStyle14,
           textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
