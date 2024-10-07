// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:store/constants/colors.dart';
import 'package:store/constants/sizes.dart';
import 'package:store/models/prodect.dart';
import 'package:store/secreen/detiles_screen.dart';
import 'package:store/widgets/home/prodect_crad.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: TSizes.md,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70.0),
                  decoration: const BoxDecoration(
                      color: TColors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                ListView.builder(
                  itemCount: prodects.length,
                  itemBuilder: (context, index) => Prodctcard(
                    itemIndex: index,
                    prodect1: prodects[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetilesScreen(prodect:prodects[index] ,),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
