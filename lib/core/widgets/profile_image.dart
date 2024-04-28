import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.cyanAccent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/profile-imge.com.png'),
            ),),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: 38,
                height: 38,
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor,

                ),
                child: Center(
                  child: Icon(
                    Icons.edit_outlined,
                    color: kScaffoldColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
