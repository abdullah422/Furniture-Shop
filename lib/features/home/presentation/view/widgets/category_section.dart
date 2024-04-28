import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop/constant.dart';
import 'package:furniture_shop/core/utils/styles.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Category',
              style: Styles.textStyle20,
            ),
            Text('See All',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ))
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            CategoryItem(
              categoryName: 'Sofa',
              svgSource: 'assets/svg/sofa-catrgory.svg',
            ),
            CategoryItem(
              categoryName: 'Chair',
              svgSource: 'assets/svg/chair-category.svg',
            ),
            CategoryItem(
              categoryName: 'Lamp',
              svgSource: 'assets/svg/lamp-category.svg',
            ),
            CategoryItem(
              categoryName: 'Cupboard',
              svgSource: 'assets/svg/cupboard-category.svg',
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.svgSource, required this.categoryName});

  final String svgSource;
  final String categoryName;

  @override
  Widget build(BuildContext context)  {
    return Column(
      children: [
        Container(
          height: 75,
          width: 75,
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kGray2Color,
          ),
          child: SvgPicture.asset(
            svgSource,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          categoryName,
          style: Styles.textStyleBlackW60014,
        ),
      ],
    );
  }
}
