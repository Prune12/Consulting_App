/*ici c'est la page de description des offres en cours*/
import 'dart:async';

import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/footer.widget.dart';
import 'package:flutter/material.dart';

class OffreEncours extends StatefulWidget {
  const OffreEncours({super.key});

  @override
  State<OffreEncours> createState() => _OffreEncoursState();
}

class _OffreEncoursState extends State<OffreEncours> {
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
        // backgroundColor: Colors.white,
        appBar: const MyAppBar(),
        body: SingleChildScrollView(
          child: Wrap(
            children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(children: [
                    Container(
                      height: 630,
                      width: 550,
                      margin: const EdgeInsets.only(left: 100),
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        top: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 230, 224, 224),
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 500,
                            height: 300,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/image-22-1.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Text(
                                "Titre de l’offres :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'popping',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 220,
                              ),
                              Text(
                                "Titre de l’offres",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'popping',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Text(
                                "Categorie :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'popping',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 265,
                              ),
                              Text(
                                "Titre de l’offres",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'popping',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Text(
                                "Duree :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'popping',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 300,
                              ),
                              Text(
                                "Titre de l’offres",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'popping',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Text(
                                "Localisation :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'popping',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 245,
                              ),
                              Text(
                                "Titre de l’offres",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'popping',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Text(
                                "Budget :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'popping',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 300,
                              ),
                              Text(
                                "Titre de l’offres",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'popping',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "valide jusqu'au 12 janvier à 12h30",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 192, 189, 189),
                                    fontFamily: 'popping',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("En cours",
                                style: TextStyle(
                                    color: APPBAR_COLOR,
                                    fontFamily: 'popping')),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: BUTTON_COLOR,
                                fixedSize: const Size(165, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                                //

                                ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 430,
                          height: 400,
                          //margin: EdgeInsets.only(right: 60),
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 5,
                            top: 40,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 230, 224, 224),
                                  width: 2,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              shape: BoxShape.rectangle),
                          child: const Column(
                            children: [
                              Center(
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/boss.jpg'),
                                  radius: 60,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Text(
                                  "NGANDO Armand",
                                  style: TextStyle(
                                      fontFamily: 'popping',
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Text(
                                  "Johnson",
                                  style: TextStyle(
                                      fontFamily: 'popping',
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Text(
                                  "Consultant",
                                  style: TextStyle(
                                      fontFamily: 'popping',
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.place),
                                  Text(
                                    "Yaoundé",
                                    style: TextStyle(
                                        fontFamily: 'popping',
                                        fontSize: 20,
                                        color: Colors.grey),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        ),
                      ]),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 0,),
                  
                  child: 
                        Divider(
                          color: Colors.black,
                          endIndent: 700,
                          indent: 130,
                        ),),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.1,top:MediaQuery.of(context).size.height*0.0007 ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            textDirection: TextDirection.ltr,
                            children: [
                              Text(
                                "JOB DESCRIPTION",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'popping',
                                    fontSize: 35,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
    const SizedBox(
                  height: 150,
                ),
                Container(
                  width: 550,
                  height: 200,
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1),
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 50,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 230, 224, 224),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Text(
                    "cet offre est une demande des services d'un consultant dans le domaine du marketing,cet offre est une demande des services d'un consultant dans le domaine du marketing",
                    style: TextStyle(
                        fontFamily: 'popping',
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey),
                  ),
                ),















                      ],
                    ),
                    const SizedBox(
                      width: 100
                    ),
                    Container(
                      width: 430,
                      height: 400,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        top: 40,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 230, 224, 224),
                              width: 2,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          shape: BoxShape.rectangle),
                      child: const Column(
                        children: [
                          Center(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/none.png'),
                              radius: 60,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "kenfack",
                              style: TextStyle(
                                  fontFamily: 'popping',
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "Jasmine",
                              style: TextStyle(
                                  fontFamily: 'popping',
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "realisation d'un plan marketing",
                              style: TextStyle(
                                  fontFamily: 'popping',
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "note: 17/20",
                                style: TextStyle(
                                    fontFamily: 'popping',
                                    fontSize: 20,
                                    color: Colors.grey),
                              ),
                            ],
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
            
                const SizedBox(
                  height: 90,
                ),
                Container(
                    width: 550,
                    height: 60,
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.45),
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 5,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 230, 224, 224),
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(0, 0, 0, 0.61),
                    ),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Commentaires",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'popping',
                                  fontSize: 15),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Commenter",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'popping',
                                  fontSize: 15),
                            )),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.star),
                          color: APPBAR_COLOR,
                          iconSize: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.star),
                          color: APPBAR_COLOR,
                          iconSize: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.star),
                          color: APPBAR_COLOR,
                          iconSize: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.star),
                          color: APPBAR_COLOR,
                          iconSize: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.star),
                          color: Colors.grey,
                          iconSize: 20,
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 200,
                ),
              ]),
              const Footer1(),
            ],
          ),
        ));
  }
}
