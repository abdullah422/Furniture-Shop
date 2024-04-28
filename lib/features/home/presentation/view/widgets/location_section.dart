import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: TextStyle(color: kSecondaryColor),
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.015,
                    ),
                    Text(
                      'New York , USA',
                      style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_drop_down_sharp,
                      color: kPrimaryColor,
                      size: 25,
                    ),
                  ],
                )
              ],
            ),
            Container(
              decoration:
              BoxDecoration(color: kGray2Color, shape: BoxShape.circle),
              child: Icon(
                Icons.notifications_active_outlined,
                size: 30,
              ),
              padding: EdgeInsets.all(6),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
      ],
    );
  }
}