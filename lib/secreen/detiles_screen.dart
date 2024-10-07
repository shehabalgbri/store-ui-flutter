import 'package:flutter/material.dart';
import 'package:store/constants/colors.dart';
import 'package:store/constants/sizes.dart';
import 'package:store/models/prodect.dart';
import 'package:store/widgets/detiles/detiles_body.dart';

class DetilesScreen extends StatelessWidget {
  const DetilesScreen({super.key, required this.prodect});
final Prodect prodect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.primary,
      appBar: detelisAppar(),
      body:DetilesBody(prodect: prodect,),
    );
  }

  AppBar detelisAppar() {
    return AppBar(
      iconTheme: const IconThemeData(color: TColors.primary),
      title: const Text(
        'الرجوع',
        style: TextStyle(
          fontSize: TSizes.fontSizeSm,
        ),
      ),
    );
  }
}
