import 'package:flutter/material.dart';
import 'package:store/constants/colors.dart';
import 'package:store/constants/sizes.dart';

class prodectimage extends StatelessWidget {
  const prodectimage({
    super.key,
    required this.size, required this.image,
  });

  final Size size;
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: TSizes.md),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.7,
            decoration: const BoxDecoration(
                color: TColors.white, shape: BoxShape.circle),
          ),
          Image.asset(
            image,
            height: size.width * 0.75,
            width: size.width*0.75,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
