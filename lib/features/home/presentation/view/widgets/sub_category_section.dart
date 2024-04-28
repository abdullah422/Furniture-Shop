import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';
import 'package:furniture_shop/core/utils/styles.dart';

class SubCategorySection extends StatelessWidget {
  SubCategorySection({super.key});

  final List<String> subCategory = [
    'All',
    'Newest',
    'Popular',
    'Featured',
    'Bedroom',
  ];



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        SizedBox(
          height: 40,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SubCategoryItem(
                category: subCategory[index],
              );
            },
            itemCount: subCategory.length,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}

class SubCategoryItem extends StatelessWidget {
  const SubCategoryItem({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),

        ),
        color: kGray2Color
      ),
      //height: 15,
      child: Text(category,style: Styles.textStyleBlackW60014,),
    );
  }
}
