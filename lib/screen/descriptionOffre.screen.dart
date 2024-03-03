/*ici c'est la page de description des offres, cette page s'affiche lorsqu'on clique sur une offre et nous donne la description de l'offre en question et 
 et nous donne la possiblité de postuler à l'offre*/
import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/footer.widget.dart';
import 'package:flutter/material.dart';

class DescriptionOffrePage extends StatefulWidget {
  const DescriptionOffrePage({super.key});

  @override
  State<DescriptionOffrePage> createState() => _DescriptionOffrePageState();
}

class _DescriptionOffrePageState extends State<DescriptionOffrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: const MyAppBar(),
        body: SingleChildScrollView(
          child: Wrap(
            children: [
              Stack(
                children:[
                  Container(
                    width:MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*2,
                    child:Image.asset(
                      "assets/images/csting.jpeg",
                      fit:BoxFit.cover,
                    width:MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*2,
                      
                         
                    ),                  
                    
                    ),
            
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
                            child: const Text("Postuler",
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
                const Divider(
                  color: Colors.black,
                  endIndent: 800,
                  indent: 100,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Row(
                    //textDirection: TextDirection.ltr,
                    children: [
                      Text(
                        "JOB DESCRIPTION",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'popping',
                            fontSize: 35,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 550,
                  height: 200,
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.45),
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
              ])]
              
              ),
              const Footer1(),
            ],
          ),
        ));
  }
}
