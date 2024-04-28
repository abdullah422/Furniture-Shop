import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';
import 'package:furniture_shop/features/auth/presentaion/login_wedgits/end_section.dart';
import 'package:furniture_shop/features/auth/presentaion/login_wedgits/forget_password.dart';
import 'package:furniture_shop/features/auth/presentaion/widgets/password_form.dart';

import '../../../../core/widgets/main_button.dart';
import '../widgets/email_form.dart';
import '../widgets/page_tittle.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.055),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.11),
            const PageTittle(
              title: 'Sign In',
              subtitle: 'Hil Welcome back, you' '\'ve been missed',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            const EmailForm(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const PasswordForm(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const ForgetPassword(),
            MainButton(textButton: 'Sign In', action: () {}),
            const EndSection()
          ],
        ),
      ),
    );
  }


}
