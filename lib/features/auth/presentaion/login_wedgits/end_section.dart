import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';


class EndSection extends StatelessWidget {
  const EndSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Expanded(
              child: Container(
                color: kSecondaryColor,
                height: 1,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.35 ,
              child: Text(
                'Or Sign in with',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Container(
                color: kSecondaryColor,
                height: 1,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 0.8, color: kSecondaryColor),
              ),
              child: Icon(
                Icons.apple,
                size: 30,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 0.8, color: kSecondaryColor),
              ),
              child: Icon(
                Icons.facebook_outlined,
                size: 30,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 0.8, color: kSecondaryColor),
              ),
              child: Icon(
                Icons.g_translate,
                size: 30,
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t' ' have an account ?',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: () {
                //GoRouter.of(context).push(AppRouter.kLoginView);
              },
              child: const Text(
                'Sign UP',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
