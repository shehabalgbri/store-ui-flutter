import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/constants/colors.dart';
import 'package:store/widgets/home/home_body.dart';

class Homesecreen extends StatelessWidget {
  const Homesecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.primary,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'مرحبا بكم في متجر الالكترونيات',
          style: GoogleFonts.getFont('Almarai'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
        backgroundColor: TColors.primary,
      ),
      body: const HomeBody(),
    );
  }
}
