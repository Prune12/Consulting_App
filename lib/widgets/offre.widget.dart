//widget reutilisable pour les offres
import 'dart:async';

import 'package:consulting_app/utils/Themes.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';


class OffresWidget extends StatefulWidget {
  final String imageoffre;
  final String descriptiontext;
  final String pricetext;
  final String datetext;
  VoidCallback onpressed;
  VoidCallback? ontap;
  OffresWidget(
      {super.key,
      required this.imageoffre,
      required this.descriptiontext,
      required this.pricetext,
      required this.datetext,
      required this.onpressed,
      this.ontap});

  @override
  State<OffresWidget> createState() => _OffresWidgetState();
}

class _OffresWidgetState extends State<OffresWidget> {
  bool isOk = false;
bool _enabled = true;
getData() async {
 // fonction pour recuperer les donnees
 Timer(const Duration(seconds: 10), () {
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
    return
    //  _enabled ? Center(child: CircularProgressIndicator()) :
    Skeletonizer(
      enabled: _enabled,
      
   child: InkWell(
        onTap: widget.ontap,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.28,
          child: Card(
            elevation: 10.0,
            child: Row(
                //spacing: 8,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30,
                    height: MediaQuery.of(context).size.height * 0.23,
                    color: Color.fromRGBO(252, 185, 0, 1),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(30),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.08,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.imageoffre),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        widget.descriptiontext,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 3, 6, 29),
                            fontFamily: 'popping',
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 185),
                        child: Text(
                          widget.pricetext,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 3, 6, 29),
                              fontFamily: 'popping',
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 170),
                        child: Text(
                          widget.datetext,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontFamily: 'popping',
                              fontSize: 11),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 100),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Commentaires",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 3, 6, 29),
                                    fontFamily: 'popping',
                                    fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Commenter",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 3, 6, 29),
                                    fontFamily: 'popping',
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1, left: 380),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                          iconSize: 20,
                          color: APPBAR_COLOR,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 300, top: 55),
                          child: ElevatedButton(
                            onPressed: widget.onpressed,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shadowColor:
                                    const Color.fromARGB(255, 218, 217, 217),
                                side: const BorderSide(
                                    color: Color.fromRGBO(252, 185, 0, 1)),
                                fixedSize: const Size(100, 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            child: const Text(
                              "Postuler",
                              style: TextStyle(
                                  color: Color.fromRGBO(252, 185, 0, 1),
                                  fontFamily: 'popping',
                                  fontSize: 13),
                            ),
                          )),
                    ],
                  )
                ]),
          ),
        ))) ;
  
  }
}
