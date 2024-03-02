

import 'package:consulting_app/utils/Themes.dart';
import 'package:flutter/material.dart';

//widget portable qui affiche les images et les textes
class TextAndContainerWidget extends StatefulWidget {
  final double height;
  final double width;
  final ImageProvider image;
  final Text text1;
  final Text text2;
  const TextAndContainerWidget(
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
        padding: const EdgeInsets.only(top: 16.0),
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

//widget button comprenant une image
class TextAndContainerButton extends StatefulWidget {
   double height;
   double width;
  final String? image;
  final Text text1;

  TextAndContainerButton({
    super.key,
    required this.height,
    required this.width,
     this.image,
    required this.text1,
  });

  @override
  State<TextAndContainerButton> createState() => _TextAndContainerButtonState();
}

//widget reutilisable permettant de creer des annonces
class _TextAndContainerButtonState extends State<TextAndContainerButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      // borderRadius: BorderRadius.circular(20),
      // radius: 60,
      child: Container(
        padding: EdgeInsets.all(20.0),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
         color: BUTTON_COLOR,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(children: [
           Image.asset(
              widget.image!,
              color: Colors.white,
              fit: BoxFit.cover,
              width: 30,
              height: 20,
            ),
            const SizedBox(
              width: 9,
            ),
            Expanded(child: 
            widget.text1,),

        ]),
      ),
    );
 
  }
}

//widget button comprenant sans image
class TextAndContainerButton2 extends StatefulWidget {
   double height;
   double width;
  
  final Text text1;

  TextAndContainerButton2({
    super.key,
    required this.height,
    required this.width,
     
    required this.text1,
  });

  @override
  State<TextAndContainerButton2> createState() => _TextAndContainerButton2State();
}

//widget reutilisable permettant de creer des annonces
class _TextAndContainerButton2State extends State<TextAndContainerButton2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      // borderRadius: BorderRadius.circular(20),
      // radius: 60,
      child: Container(
        padding: EdgeInsets.all(20.0),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
         color: BUTTON_COLOR,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(children: [
           
            const SizedBox(
              width: 9,
            ),
            Expanded(child: 
            widget.text1,),

        ]),
      ),
    );
 
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
  const TextAndContainerAndbuttonWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.image,
      required this.text1,
      required this.text2,
      required this.button});

  @override
  State<TextAndContainerAndbuttonWidget> createState() =>
      _TextAndContainerAndbuttonWidgetState();
}

class _TextAndContainerAndbuttonWidgetState
    extends State<TextAndContainerAndbuttonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 16.0),
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
  const PlantarifaireContainerWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.text1,
      required this.text2,
      required this.button});

  @override
  State<PlantarifaireContainerWidget> createState() =>
      _PlantarifaireContainerWidgetState();
}

class _PlantarifaireContainerWidgetState
    extends State<PlantarifaireContainerWidget> {
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
            padding: const EdgeInsets.only(top: 16.0),
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
