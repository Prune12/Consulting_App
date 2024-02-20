/*cette page contient un widget reutilisable permettant de definir les differents blocs
contenant les services proposés par l'application*/

import 'package:flutter/material.dart';

class ServiceContainerWidget extends StatefulWidget {
  final AssetImage imagecontainer;
  final TextButton principaltext;
  final Icon? trueicon;
  final TextButton localisationtext;
  final Text pricetext;
  const ServiceContainerWidget(
      {super.key,
      required this.imagecontainer,
      required this.principaltext,
      this.trueicon,
      required this.localisationtext,
      required this.pricetext});

  @override
  State<ServiceContainerWidget> createState() => _ServiceContainerWidgetState();
}

class _ServiceContainerWidgetState extends State<ServiceContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
         constraints: BoxConstraints(maxWidth: 300),
        
        child: Card(
          elevation: 5.0,
          borderOnForeground: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10.0), // Ajustez la valeur pour changer le rayon de l'arrondi
            side: const BorderSide(color: Colors.black),
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: widget.imagecontainer, fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    height: 20.0,
                    width: 40.0,
                    margin: const EdgeInsets.only(
                      top: 40.0, /*right: 80.0*/
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                      color: Colors.black,
                    ),
                    child: const Icon(
                      Icons.star,
                      color:
                          Colors.white, // Choisissez la couleur que vous voulez
                      size: 18.0,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: 230.0,
                    height: 70.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.only(left: 30.0, top: 180.0),
                    child: const Row(children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/consulting01.jpg'),
                        radius: 25.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "3MC DIGITAL",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontFamily: 'popping'),
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.shield_rounded,
                                color: Colors.green,
                                size: 15,
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                "VERIFIER",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 15.0),
                              ),
                            ],
                          )
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: widget.principaltext,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    widget.trueicon!,
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.place,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    widget.localisationtext,
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    widget.pricetext,
     
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border,
                            color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
