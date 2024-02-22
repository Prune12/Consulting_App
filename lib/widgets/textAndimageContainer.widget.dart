import 'dart:ffi';

import 'package:flutter/material.dart';

class TextAndContainerWidget extends StatefulWidget {
  final double height;
  final double width;
  final ImageProvider image;
  final Text text1;
  final Text text2;
  TextAndContainerWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.image,
      required this.text1,
      required this.text2});

  @override
  State<TextAndContainerWidget> createState() => _TextAndContainerWidgetState();
}
//widget reutilisable permettant de creer des annonces
class _TextAndContainerWidgetState extends State<TextAndContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.only(top:16.0),
      height: widget.height,
      width: widget.width,
   child: SingleChildScrollView(
     
      child: Column(
        children: [
          Container(
            width: widget.width * 0.7,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          widget.text1,
          SizedBox(
            height: 8.0,
          ),
          widget.text2,
        ],
      ),
    ));
  }
}

//widget reutilisable permettant d'afficher les service
class TextAndContainerAndbuttonWidget extends StatefulWidget {
   final double height;
  final double width;
  final ImageProvider image;
  final Text text1;
  final Text text2;
  final ElevatedButton button;
  const TextAndContainerAndbuttonWidget({super.key,required this.height,
      required this.width,
      required this.image,
      required this.text1,
      required this.text2,required this.button});

  @override
  State<TextAndContainerAndbuttonWidget> createState() => _TextAndContainerAndbuttonWidgetState();
}

class _TextAndContainerAndbuttonWidgetState extends State<TextAndContainerAndbuttonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.only(top:16.0),
      height: widget.height,
      width: widget.width,
   child: SingleChildScrollView(
     
      child: Column(
        children: [
          Container(
            width: widget.width * 0.7,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          widget.text1,
          SizedBox(
            height: 8.0,
          ),
          widget.text2,
           SizedBox(
            height: 12.0,
          ),
          widget.button,
        ],
      ),
    ));
  }
}
//widget reutilisable permettant d'afficher les plan tarifaire
class PlantarifaireContainerWidget extends StatefulWidget {
  final double height;
  final double width;
  
  final Text text1;
  final Text text2;
  final ElevatedButton button;
  const PlantarifaireContainerWidget({super.key,required this.height,
      required this.width,
      
      required this.text1,
      required this.text2,required this.button});

  @override
  State<PlantarifaireContainerWidget> createState() => _PlantarifaireContainerWidgetState();
}

class _PlantarifaireContainerWidgetState extends State<PlantarifaireContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
elevation: 5.0,
            borderOnForeground: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  10.0), // Ajustez la valeur pour changer le rayon de l'arrondi
              
            ),
    
    
   child: Container(
       padding: const EdgeInsets.only(top:16.0),
      height: widget.height,
      width: widget.width,
   child: SingleChildScrollView(
     
      child: Column(
        children: [
          
          widget.text1,
          SizedBox(
            height: 15.0,
          ),
          widget.text2,
           SizedBox(
            height: 15.0,
          ),
          widget.button,
        ],
      ),
    )));
  }
}
