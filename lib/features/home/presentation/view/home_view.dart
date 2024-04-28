import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';
import 'package:furniture_shop/features/home/presentation/view/widgets/category_section.dart';
import 'package:furniture_shop/features/home/presentation/view/widgets/sub_category_section.dart';

import 'widgets/banner_section.dart';
import 'widgets/flash_sale_section.dart';
import 'widgets/location_section.dart';
import 'widgets/product_section.dart';
import 'widgets/search_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * mainPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            LocationSection(),
            SearchSection(),
            BannerSection(),
            CategorySection(),
            FlashSaleSection(),
            SubCategorySection(),
            ProductsSection()
          ],
        ),
      ),
    );
  }
}




