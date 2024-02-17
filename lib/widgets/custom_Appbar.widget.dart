//page qui permet de creer un widget appbar reutilisable

import 'package:flutter/material.dart';

// Créez une classe qui hérite de StatefulWidget et qui implémente PreferredSizeWidget
class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  // Définissez les paramètres de votre widget AppBar
  //String title="";
  final Color color;
  final String logo;

  // Utilisez le constructeur pour initialiser les paramètres
  CustomAppBar({Key? key, required this.color, required this.logo})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  // Créez une méthode createState qui renvoie une instance de votre classe State
  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  // Définissez la taille préférée de votre widget AppBar
  @override
  final Size preferredSize;
}

// Créez une classe qui hérite de State
class _CustomAppBarState extends State<CustomAppBar> {
  // Définissez une variable pour stocker la couleur du bouton droit
  Color rightButtonColor = Colors.black;

  // Implémentez la méthode build pour afficher votre widget AppBar
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.color, // Utilisez widget pour accéder au paramètre color
      iconTheme: const IconThemeData(color: Colors.black,),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0), // Ajoutez une marge à gauche
        child: Container(
          width: 120.0, // Ajustez la largeur comme vous le souhaitez
          height: 120.0, // Ajustez la hauteur comme vous le souhaitez
          child: Image(
            image: AssetImage(widget.logo), // Utilisez widget pour accéder au paramètre logo
            fit: BoxFit.scaleDown, // Utilisez BoxFit.scaleDown pour que l'image s'adapte au Container tout en conservant son rapport d'aspect
          ),
        ),
      ),
    );
  }
}
