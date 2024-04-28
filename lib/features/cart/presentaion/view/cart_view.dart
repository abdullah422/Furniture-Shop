import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';
import 'package:furniture_shop/core/widgets/custom_app_bar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return CartViewBody();
  }
}

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * mainPadding),
      child: const Column(
        children: [
          CustomAppBar(title:'My Cart',),
        ],
      ),
    );
  }
}
