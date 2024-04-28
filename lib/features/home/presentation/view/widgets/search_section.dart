import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: kGray2Color),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Icon(
                    Icons.search,
                    color: kSecondaryColor,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text('Search workout, Trainer'),
                ],
              )),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.015,
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: kPrimaryColor),
          child: Icon(
            Icons.filter_list_alt,
            color: kScaffoldColor,
          ),
        ),
      ],
    );
  }
}
