import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_shop/constant.dart';

class ProductsSection extends StatelessWidget {
  ProductsSection({super.key});

  final List<String> productsImages = [
    'assets/images/5.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          height: 400,
          child: GridView.builder(
            itemCount: productsImages.length,
            itemBuilder: (context, index) {
              return GridViewItem(
                index: index,
                image: productsImages[index],
              );
            },
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 2.4 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          ),
        ),
      ],
    );
  }
}

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.index, required this.image});

  final int index;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 3 / 3,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Arm Chair'),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: kYellow,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('4.9'),
                  ],
                )
              ],
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '\$' '180',
                  textAlign: TextAlign.start,
                )),
          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: const EdgeInsets.only(right: 10,top: 8),
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kScaffoldColor,
            ),
            child: const Icon(
              Icons.favorite,color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
