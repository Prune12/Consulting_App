//cette page contient le code source pour la page des offres
import 'dart:async';

import 'package:consulting_app/routes/app.routes.dart';
import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/footer.widget.dart';
import 'package:consulting_app/widgets/zoomOnContainer.dart';
import 'package:flutter/material.dart';

class ForfaitPage extends StatefulWidget {
  const ForfaitPage({super.key});

  @override
  State<ForfaitPage> createState() => _ForfaitPageState();
}

class _ForfaitPageState extends State<ForfaitPage> {
    bool _enabled = true;
getData() async {
 // fonction pour recuperer les donnees
 Timer(const Duration(seconds: 3), () {
      setState(() {
    _enabled = ! _enabled;
      });
    });
}
@override
void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return _enabled
        ? SingleChildScrollView(
            child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: const Center(
                    child: CircularProgressIndicator(
                  // semanticsLabel: "Loading...",
                  semanticsValue:"Loading...",
                  color: Colors.blue,
                ))),
          )
        :Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: BUTTON_COLOR,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  color: const Color.fromRGBO(247, 252, 0, 0.49),
                  child: const Column(
                    children: [
                      Text(
                        "Cherchez-vous des personnes pour realiser vos projets et autres ? vous avez fait le bon choix! 3MC vous proposer des meilleurs consultants hautement qualifies et certifies ",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inria Serif',
                            fontSize: 40),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Avec nous c’est satisfait ou satisfait!",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inria Serif',
                                fontSize: 24),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                const Row(
                  children: [
                    Text(
                      "Choisissez un forfait",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Inria Serif',
                          fontSize: 35),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 1000,
                  padding: const EdgeInsets.only(top: 50),
                  //  color: const Color.fromRGBO(0, 0, 0, 0.64),
                  child: Column(
                    children: [
                      
                           InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                                context, AppRoutes.createposte);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding: const EdgeInsets.only(
                              top: 50, left: 20, right: 20),
                          height: 300,
                          decoration: BoxDecoration(
                            color: APPBAR_COLOR,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "  Forfait Free",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Inria Serif',
                                        fontSize: 35),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: Text(
                                  "Vous pouvez poster 06 offres d’un montant inferieur ou egale a 250000\n valide sur une periode de 3 mois puis faudra souscrire \na un forfait standart ou prenium ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Inria Serif',
                                      fontSize: 25),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                       InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                                context, AppRoutes.createposte);
                          
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding: const EdgeInsets.only(
                              top: 50, left: 20, right: 20),
                          height: 300,
                          decoration: BoxDecoration(
                            color: APPBAR_COLOR,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "  Forfait Standard                                             10500 FCFA",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Inria Serif',
                                        fontSize: 35),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: Text(
                                  "Vous pouvez poster des offres d’un montant inferieur\n ou egale a 1000000 valide sur une periode de 3 mois  ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Inria Serif',
                                      fontSize: 25),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                context, AppRoutes.createposte);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                padding: const EdgeInsets.only(
                                    top: 50, left: 20, right: 20),
                                height: 300,
                                decoration: BoxDecoration(
                                  color:
                                      APPBAR_COLOR,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "  Forfait Prenium                                            18500 FCFA",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Inria Serif',
                                              fontSize: 35),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 30),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Text(
                                        "Ce forfait vous donne la possiblite de autant d’offres \nque possibles peut importe leur montant et ce sur 3 mois ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Inria Serif',
                                            fontSize: 25),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                const Row(
                  children: [
                    Text(
                      "Quelques avis de nos clients",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Inria Serif',
                          fontSize: 35),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 1000,
                  padding: const EdgeInsets.only(top: 50),
                  color: const Color.fromRGBO(217, 217, 217, 0.18),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        padding:
                            const EdgeInsets.only(top: 15, left: 20, right: 20),
                        height: 250,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(217, 217, 217, 0.10),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 2),
                        ),
                        child: const Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/none.png'),
                                  radius: 40,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Ngassa Ali",
                                  style: TextStyle(
                                      fontFamily: "Inria Serif", fontSize: 20),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Berdrand",
                                  style: TextStyle(
                                      fontFamily: "Inria Serif", fontSize: 20),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.place),
                                    Text(
                                      "Yaoundé",
                                      style: TextStyle(
                                          fontFamily: 'Inria Serif',
                                          fontSize: 20,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Consultant",
                                  style: TextStyle(
                                      fontFamily: "Inria Serif", fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(width: 50),
                            Column(
                              children: [
                                Text(
                                  "Avis du client",
                                  style: TextStyle(
                                      fontFamily: 'Inria Serif', fontSize: 30),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "cette application est super!!! cette application est super!!! \ncette application est super!!!",
                                  style: TextStyle(
                                      fontFamily: 'Inria Serif',
                                      fontSize: 20,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        padding:
                            const EdgeInsets.only(top: 15, left: 20, right: 20),
                        height: 250,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(217, 217, 217, 0.10),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 2),
                        ),
                        child: const Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/none.png'),
                                  radius: 40,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Ngassa Ali",
                                  style: TextStyle(
                                      fontFamily: "Inria Serif", fontSize: 20),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Berdrand",
                                  style: TextStyle(
                                      fontFamily: "Inria Serif", fontSize: 20),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.place),
                                    Text(
                                      "Yaoundé",
                                      style: TextStyle(
                                          fontFamily: 'Inria Serif',
                                          fontSize: 20,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Consultant",
                                  style: TextStyle(
                                      fontFamily: "Inria Serif", fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(width: 50),
                            Column(
                              children: [
                                Text(
                                  "Avis du client",
                                  style: TextStyle(
                                      fontFamily: 'Inria Serif', fontSize: 30),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "cette application est super!!! cette application est super!!! \ncette application est super!!!",
                                  style: TextStyle(
                                      fontFamily: 'Inria Serif',
                                      fontSize: 20,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Footer1(),
          ],
        ),
      ),
    );
  }
}
