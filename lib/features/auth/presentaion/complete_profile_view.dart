import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/core/widgets/custom_app_bar.dart';
import 'package:furniture_shop/core/widgets/main_button.dart';
import 'package:furniture_shop/core/widgets/profile_image.dart';
import 'package:furniture_shop/features/auth/presentaion/widgets/name_form.dart';
import 'package:furniture_shop/features/auth/presentaion/widgets/page_tittle.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../constant.dart';
import '../../../core/utils/app_router.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CompleteProfileBody(),
    );
  }
}

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> genderItems = [
      'Male',
      'Female',
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.055),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.09),
            const CustomAppBar(title:'',),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.055),
              child: const PageTittle(
                title: 'Complete Your Profile',
                subtitle: 'Don\t'
                    ' worry only you can see your personal data. No one else will be able to see it.',
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const Align(
              alignment: Alignment.center,
              child: ProfileImage(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            NameForm(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),

            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: kTextFormField,
              ),
              child: InternationalPhoneNumberInput(
                onInputChanged: (v) {},
                inputDecoration: const InputDecoration(
                  //labelText: 'Password',
                  border: InputBorder.none,
                  focusColor: Colors.cyan,
                  hintText: '     example@example.com',
                  hintStyle: TextStyle(color: kSecondaryColor, fontSize: 15),
                  fillColor: Colors.red,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 48,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: kTextFormField,
              ),
              child: DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: const InputDecoration(
                  //labelText: 'Password',
                  border: InputBorder.none,

                  hintText: '     example@example.com',
                  hintStyle: TextStyle(color: kSecondaryColor, fontSize: 15),
                  fillColor: Colors.red,
                ),
                hint: const Text(
                  'Select',
                  style: TextStyle(fontSize: 14),
                ),
                items: genderItems
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Select';
                  }
                  return null;
                },
                onChanged: (value) {
                  //Do something when selected item is changed.
                },
                onSaved: (value) {},
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45,
                  ),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),

              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            MainButton(textButton: 'Sign Up', action: () {
              GoRouter.of(context).push(AppRouter.kRootView);
            }),
            /*const NameForm(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const EmailForm(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const PasswordForm(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.007),
            const AgreeWithTerms(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),

            const EndSection(),*/
          ],
        ),
      ),
    );
  }
}
