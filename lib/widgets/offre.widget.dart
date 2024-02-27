//widget reutilisable pour les offres
import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/zoomOnContainer.dart';
import 'package:flutter/material.dart';

class OffresWidget extends StatefulWidget {
  final String imageoffre;
  final String descriptiontext;
  final String pricetext;
  final String datetext;
  VoidCallback onpressed;
  OffresWidget(
      {super.key,
      required this.imageoffre,
      required this.descriptiontext,
      required this.pricetext,
      required this.datetext,
      required this.onpressed});

  @override
  State<OffresWidget> createState() => _OffresWidgetState();
}

class _OffresWidgetState extends State<OffresWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
            child: Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.23,
      child: Card(
        elevation: 10.0,
        child: Row(
            //spacing: 8,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 30,
                height: MediaQuery.of(context).size.height * 0.23,
                color: APPBAR_COLOR,
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(30),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.08,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imageoffre), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
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
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 185),
                    child: Text(
                      widget.pricetext,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 3, 6, 29),
                          fontFamily: 'popping',
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 170),
                    child: Text(
                      widget.datetext,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 3, 6, 29),
                          fontFamily: 'popping',
                          fontSize: 12),
                    ),
                  ),
                ],
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1, left: 380),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                      iconSize: 20,
                      color: APPBAR_COLOR,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 300, top: 55),
                      child: ElevatedButton(
                        onPressed: widget.onpressed,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: APPBAR_COLOR),
                            fixedSize: Size(100, 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: const Text(
                          "Postuler",
                          style: TextStyle(
                              color: APPBAR_COLOR,
                              fontFamily: 'popping',
                              fontSize: 13),
                        ),
                      )),
                ],
              )
            ]),
      ),
    ));
  }
}
