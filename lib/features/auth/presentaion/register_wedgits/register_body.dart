import 'package:flutter/material.dart';
import 'package:furniture_shop/core/utils/app_router.dart';
import 'package:furniture_shop/features/auth/presentaion/login_wedgits/end_section.dart';
import 'package:furniture_shop/features/auth/presentaion/widgets/name_form.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/main_button.dart';
import '../widgets/email_form.dart';
import '../widgets/page_tittle.dart';
import '../widgets/password_form.dart';
import 'agree_wirh_terms.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.055),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.09),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.055),
              child: const PageTittle(
                title: 'Create Account',
                subtitle: 'Fill your information below or register'
                    '\n with your social account.',
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const NameForm(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const EmailForm(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const PasswordForm(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.007),
            const AgreeWithTerms(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            MainButton(textButton: 'Sign Up', action: () {
              GoRouter.of(context).push(AppRouter.kCompleteProfileView);
            }),
            const EndSection(),
      
          ],
        ),
      ),
    );
  }
}