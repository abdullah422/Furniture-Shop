import 'package:flutter/material.dart';

import '../../../../constant.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {
            // GoRouter.of(context).push(AppRouter.kLoginView);
          },
          child: const Text(
            'Forgot Password?',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}
