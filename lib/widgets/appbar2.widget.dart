//cette page contient la nouvelle appbar

import 'package:consulting_app/routes/app.routes.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 48.0);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Colors.yellow[700],
      elevation: 4.0,
      shadowColor: Colors.grey[400],
      title: Padding(
        padding: EdgeInsets.only(right: screenWidth * 0.1),
        child: Image.asset(
          'assets/images/3m.png',
          width: screenWidth * 0.3,
          height: screenWidth * 0.3,
        ),
      ),
      centerTitle: false,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.02),
          child: TextButton(
              onPressed: () {
                showLoginDialog(context);
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.person_pin,
                    size: 15,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Se connecter',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              )),
        ),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.02),
          child: TextButton(
            onPressed: () {
              showLoginDialog(context);
            },
            child: const Text(
              'S\'inscrire',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.0,
              ),
            ),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48.0),
        child: Container(
          color: Colors.yellow[700],
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            direction: Axis.horizontal,
            spacing: screenWidth * 0.05,
            children: <Widget>[
              buildMenuButton(0, 'Accueil', () {
                Navigator.pushReplacementNamed(context, AppRoutes.newhome);
              }),
              buildMenuButton(1, 'Travail à faire', () {
                Navigator.pushReplacementNamed(context, AppRoutes.taf);
              }),
              buildMenuButton(2, 'Publier une offre', () {
                Navigator.pushReplacementNamed(context, AppRoutes.offre);
              }),
              buildMenuButton(3, 'Consultants', () {
                Navigator.pushReplacementNamed(context, AppRoutes.offre);
              }),
              buildMenuButton(4, 'Actualités', () {
                Navigator.pushReplacementNamed(context, AppRoutes.actuality);
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuButton(int index, String title, VoidCallback onPressed) {
    return TextButton(
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
        onPressed();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 13.0,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            height: 2,
            width: 60,
            decoration: BoxDecoration(
              color:
                  _selectedIndex == index ? Colors.black : Colors.transparent,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ],
      ),
    );
  }
}

//formulaire de connexion
void showLoginDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierColor: const Color.fromARGB(166, 0, 0, 0),
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Se connecter'),
        content: const Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Identifiant ou e-mail',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Mot de passe',
              ),
              obscureText: true,
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Se connecter'),
            onPressed: () {
              // Valider les informations d'identification et fermer la boîte de dialogue
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

//formulaire d'inscription
void showLoginDialog2(BuildContext context) {
  showDialog(
    context: context,
    barrierColor: const Color.fromARGB(166, 0, 0, 0),
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Se connecter'),
        content: const Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Identifiant ou e-mail',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Mot de passe',
              ),
              obscureText: true,
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Se connecter'),
            onPressed: () {
              // Valider les informations d'identification et fermer la boîte de dialogue
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
