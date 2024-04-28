import 'package:flutter/material.dart';
import 'package:furniture_shop/core/utils/styles.dart';

import '../../../../constant.dart';

class EmailForm extends StatefulWidget {
   const EmailForm({super.key});

  @override
  State<EmailForm> createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: Styles.tSTittleTextField,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Container(
          height: 48,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            color: kTextFormField,
          ),
          child: TextFormField(
            controller: _emailController,
            cursorColor: kPrimaryColor,
            style: const TextStyle(fontSize: 16),
            decoration: const InputDecoration(
              //labelText: 'Password',
              border: InputBorder.none,
              focusColor: Colors.cyan,
              hintText: '     example@example.com',
              hintStyle: TextStyle(color: kSecondaryColor, fontSize: 15),
              fillColor: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
