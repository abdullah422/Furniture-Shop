import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';
import 'package:furniture_shop/core/utils/styles.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({super.key});

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  bool _isHidden = true;

  final TextEditingController _passwordController = TextEditingController();

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
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
            controller: _passwordController,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusColor: Colors.cyan,
              hintText: '     ********',
              hintStyle: const TextStyle(color: kSecondaryColor),
              fillColor: Colors.red,
              suffixIcon: IconButton(
                icon: _isHidden
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
                onPressed: _toggleVisibility,
              ),
            ),
            obscureText: _isHidden,
          ),
        ),
      ],
    );
  }
}
