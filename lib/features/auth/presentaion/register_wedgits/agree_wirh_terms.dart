import 'package:flutter/material.dart';
import 'package:furniture_shop/core/utils/styles.dart';

import '../../../../constant.dart';

class AgreeWithTerms extends StatefulWidget {
  const AgreeWithTerms({super.key});

  @override
  State<AgreeWithTerms> createState() => _AgreeWithTermsState();
}

class _AgreeWithTermsState extends State<AgreeWithTerms> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(

          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
          checkColor: kScaffoldColor,
          activeColor: kPrimaryColor,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap

        ),
        const Text('Agree with',style: Styles.textStyle16,),
        TextButton(
          onPressed: () {
            // GoRouter.of(context).push(AppRouter.kLoginView);
          },
          child: const Text(
            'Terms & Conditions',
            style: Styles.underLineStyle
          ),
        )
      ],
    );
  }
}
