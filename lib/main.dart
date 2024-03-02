import 'package:consulting_app/routes/app.routes.dart';
import 'package:consulting_app/screen/Actuality.screen.dart';
import 'package:consulting_app/screen/OffreEncours.screen.dart';
import 'package:consulting_app/screen/consultant.screen.dart';
import 'package:consulting_app/screen/descriptionOffre.screen.dart';
import 'package:consulting_app/screen/homepage.screen.dart';
import 'package:consulting_app/screen/newHome.screen.dart';
import 'package:consulting_app/screen/offre.screen.dart';
import 'package:consulting_app/screen/offreTermine.screen.dart';
import 'package:consulting_app/screen/taf.screen.dart';
import 'package:consulting_app/utils/Themes.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
  }
}*/

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: '3M.digital',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.newhome:(context) => Newhomepage(),
        AppRoutes.taf:(context) => const TAFPage(),
        AppRoutes.offre:(context) => const PublishOffer(),
        AppRoutes.consult:(context) => const ConsultantPage(),
        AppRoutes.actuality:(context) => const ActualityPage(),
        AppRoutes.desoffre:(context) => const DescriptionOffrePage(),
        AppRoutes.OffreEncours:(context) => const OffreEncours(),
        AppRoutes.OffreTermine:(context) => const OffreTermine(),
      },
      home:  Newhomepage(),
    );
  }
}