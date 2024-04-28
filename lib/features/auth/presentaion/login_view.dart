import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';
import 'package:furniture_shop/core/utils/styles.dart';
import 'package:furniture_shop/core/widgets/main_button.dart';
import 'package:furniture_shop/features/auth/presentaion/login_wedgits/login_body.dart';
import 'package:furniture_shop/features/auth/presentaion/widgets/email_form.dart';
import 'package:furniture_shop/features/auth/presentaion/widgets/page_tittle.dart';
import 'package:furniture_shop/features/auth/presentaion/widgets/password_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: LoginBody(),
      ),
    );
  }
}

