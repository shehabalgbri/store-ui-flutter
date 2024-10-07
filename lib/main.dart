import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/constants/colors.dart';
import 'package:store/secreen/home_secreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homesecreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: TColors.primary,
      ),
      locale: const Locale('ar','AE'),
      supportedLocales:const [
        Locale('ar','AE')
        ] ,
       localizationsDelegates: const [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
   
  ],
    );
  }
}

