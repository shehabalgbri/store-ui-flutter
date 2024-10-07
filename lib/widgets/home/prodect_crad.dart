import 'package:flutter/material.dart';
import 'package:store/constants/colors.dart';
import 'package:store/constants/sizes.dart';
import 'package:store/models/prodect.dart';

class Prodctcard extends StatelessWidget {
  const Prodctcard({
    super.key,
     required this.itemIndex, required this.prodect1, required this.press,
  });

  
final int itemIndex;
final Prodect prodect1;
final  VoidCallback press;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: TSizes.md),
        height: TSizes.contianerHeigh,
        child: InkWell(
          onTap:press,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 166.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: TColors.white,
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 15),
                          blurRadius: 25,
                          color: Colors.black12)
                    ]),
              ),
              Positioned(
                top: 0.0,
                left: 0.0,
                child: Container(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: TSizes.md),
                    height: 160.0,
                    width: 200.0,
                    child: Image.asset(
                      prodect1.images,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: SizedBox(
                  height: 136.0,
                  width: size.width - 200.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: TSizes.md),
                        child: Text(
                         prodect1.title,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: TSizes.md),
                        child: Text(
                          prodect1.subtitle,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(TSizes.md),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: TSizes.md * 1.5,
                            vertical: TSizes.md / 5,
                          ),
                          decoration: BoxDecoration(
                            color: TColors.secondry,
                            borderRadius: 
                             BorderRadius.circular(22)
                            
                          ),
                          child: Text('السعر:\$${prodect1.price}'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
