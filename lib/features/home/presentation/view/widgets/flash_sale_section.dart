import 'package:flutter/material.dart';
import 'package:furniture_shop/core/utils/styles.dart';

class FlashSaleSection extends StatelessWidget {
  const FlashSaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Flash Sale',
          style: Styles.textStyle20,
        ),
      ],
    );
  }
}
