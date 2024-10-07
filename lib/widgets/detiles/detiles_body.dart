import 'package:flutter/material.dart';
import 'package:store/constants/colors.dart';
import 'package:store/constants/sizes.dart';
import 'package:store/models/prodect.dart';
import 'package:store/widgets/detiles/prodect_image.dart';

class DetilesBody extends StatelessWidget {
  const DetilesBody({super.key, required this.prodect});
final Prodect prodect;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.md * 1.5),
          decoration: const BoxDecoration(
            color: TColors.light,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              prodectimage(
                size: size,
                image:prodect.images,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: TSizes.md),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      vilcolor:prodect.color1,
                      isselect: true,
                    ),
                    ColorDot(
                      vilcolor: prodect.color2,
                      isselect: false,
                    ),
                    ColorDot(
                      vilcolor: prodect.color3,
                      isselect: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: TSizes.md / 2),
                child: Text(
                  prodect.title,
                  style: const TextStyle(fontSize: TSizes.lg),
                ),
              ),
              Text(
                'السعر : \$${prodect.price}',
                style: const TextStyle(
                    fontSize: TSizes.lg,
                    fontWeight: FontWeight.w600,
                    color: TColors.warning),
              ),
              const SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: TSizes.md/2),
          padding: const EdgeInsets.symmetric(horizontal: TSizes.md*1.5,vertical: TSizes.md/2),
          child: Text(
           prodect.description,
            style: const TextStyle(
              fontSize: TSizes.fontSizeMd,
              color: TColors.textwhite,
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.vilcolor,
    this.isselect = false,
  });
  final Color vilcolor;
  final bool isselect;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border:
              Border.all(color: isselect ? TColors.black : Colors.transparent)),
      margin: const EdgeInsets.symmetric(
        horizontal: TSizes.md / 2.5,
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: vilcolor),
      ),
    );
  }
}
