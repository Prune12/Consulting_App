//cette page contient la nouvelle appbar

import 'package:consulting_app/routes/app.routes.dart';
import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/TextFormField.widget.dart';
import 'package:flutter/gestures.dart';
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
              showLoginDialog2(context);
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
                //Navigator.pushReplacementNamed(context, AppRoutes.offre);
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
      return ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 100),
          child: AlertDialog(
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.close),
                      color: Colors.grey,
                      iconSize: 13,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Connectez-vous !',
                    style: TextStyle(
                        color: BUTTON_COLOR,
                        fontSize: 20,
                        fontFamily: 'popping')),
              ],
            ),
            content: Column(
              children: <Widget>[
                Form(
                    child: Column(
                  children: [
                    TextFormFieldPers1(
                      isPass: false,
                      keyboardType: TextInputType.text,
                      labeltext: "TEL OU E-MAIL",
                      hintext: "le numero de telephone ou l'adresse email",
                      maxlenght: 10,
                      putEye: false,
                      colorlabel: Colors.grey,
                      backgroundTextformfield: const Color.fromRGBO(220, 242, 250, 1),
                      borderSidetextformfield: BorderSide.none,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormFieldPers1(
                      isPass: true,
                      keyboardType: TextInputType.visiblePassword,
                      labeltext: "MOT DE PASSE",
                      hintext: "entrez le mot de passe",
                      maxlenght: 10,
                      putEye: true,
                      colorlabel: Colors.grey,
                      backgroundTextformfield: const Color.fromRGBO(220, 242, 250, 1),
                      borderSidetextformfield: BorderSide.none,
                    ),
                  ],
                )),
                const SizedBox(
                  height: 8,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Mot de passe oublié ?",
                      style: TextStyle(
                          color: Color.fromRGBO(42, 114, 221, 1),
                          fontFamily: 'popping',
                          fontSize: 10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: BUTTON_COLOR,
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(8),
                  ),
                  child: const Text(
                    "Se connecter",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'popping',
                        fontSize: 10),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(42, 114, 221, 1),
                      minimumSize: const Size(30, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.only(left: 60.0),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          'Se connecter avec ',
                          style: TextStyle(
                              fontFamily: 'popping',
                              fontSize: 10,
                              color: Colors.white),
                        ),
                       
                        Icon(
                          Icons.g_mobiledata,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 8,
                ),
                Wrap(
                  children: [
                    const Text(
                      "Vous n'avez pas encore de compte?",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'popping',
                          fontSize: 11),
                    ),
                    TextButton(
                      onPressed: () {
                        
                      },
                      child: const Text(
                        "s'inscrire",
                        style: TextStyle(
                            color: Color.fromRGBO(42, 114, 221, 1),
                            fontFamily: 'popping',
                            fontSize: 11),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ));
    },
  );
}

//formulaire d'inscription

void showLoginDialog2(BuildContext context) {
  final _isChecked = ValueNotifier<bool>(false);
  showDialog(
    context: context,
    barrierColor: const Color.fromARGB(166, 0, 0, 0),
    builder: (BuildContext context) {
      return SingleChildScrollView(
          
          child: AlertDialog(
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.close),
                      color: Colors.grey,
                      iconSize: 13,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Inscrivez-vous !',
                    style: TextStyle(
                        color: BUTTON_COLOR,
                        fontSize: 20,
                        fontFamily: 'popping')),
              ],
            ),
            content: Column(
              children: <Widget>[
                Form(
                    child: Column(
                  children: [
                    TextFormFieldPers1(
                      isPass: false,
                      keyboardType: TextInputType.text,
                      labeltext: "PRENOM",
                      hintext: "entrez le prenom",
                      maxlenght: 10,
                      putEye: false,
                      colorlabel: Colors.black,
                      backgroundTextformfield: Colors.white,
                      borderSidetextformfield: const BorderSide(
        color: Colors.black, 
      
      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormFieldPers1(
                      isPass: false,
                      keyboardType: TextInputType.text,
                      labeltext: "NOM DE FAMILLE",
                      hintext: "nom de famille",
                      maxlenght: 10,
                      putEye: false,
                      colorlabel: Colors.black,
                      backgroundTextformfield: Colors.white,
                      borderSidetextformfield: const BorderSide(
        color: Colors.black, 
      
      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormFieldPers1(
                      isPass: false,
                      keyboardType: TextInputType.phone,
                      labeltext: "TEL",
                      hintext: "entrez le NUMERO",
                      maxlenght: 10,
                      putEye: false,
                      colorlabel: Colors.black,
                      backgroundTextformfield: Colors.white,
                      borderSidetextformfield: const BorderSide(
        color: Colors.black, 
      
      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormFieldPers1(
                      isPass: false,
                      keyboardType: TextInputType.text,
                      labeltext: "EMAIL",
                      hintext: "entrez l'adresse mail",
                      maxlenght: 10,
                      putEye: false,
                      colorlabel: Colors.black,
                      backgroundTextformfield: Colors.white,
                      borderSidetextformfield: const BorderSide(
        color: Colors.black, 
      
      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormFieldPers1(
                      isPass: true,
                      keyboardType: TextInputType.visiblePassword,
                      labeltext: "MOT DE PASSE",
                      hintext: "entrez le mot de passe",
                      maxlenght: 10,
                      putEye: true,
                      colorlabel: Colors.black,
                      backgroundTextformfield: Colors.white,
                      borderSidetextformfield: const BorderSide(
        color: Colors.black, 
      
      ),
                    ),
                    Row(children: [
                      ValueListenableBuilder<bool>(
                        valueListenable: _isChecked,
                        builder: (context, isChecked, _) {
                          return Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              _isChecked.value = value!;
                            },
                          );
                        },
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            const TextSpan(
                              text: 'I have read the  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'popping',
                                  fontSize: 11),
                            ),
                            TextSpan(
                                text: 'terms',
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontFamily: 'popping',
                                    fontSize: 11),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {}),
                          ],
                        ),
                      )
                    ])
                  ],
                )),
                const SizedBox(
                  height: 8,
                ),
                
                
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: BUTTON_COLOR,
                    fixedSize: const Size(233, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    //padding: const EdgeInsets.all(8),
                  ),
                  child: const Text(
                    "S'inscrire",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'popping',
                        fontSize: 10),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(42, 114, 221, 1),
                      minimumSize: const Size(150, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.only(left: 60.0),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          "S'inscrire avec ",
                          style: TextStyle(
                              fontFamily: 'popping',
                              fontSize: 10,
                              color: Colors.white),
                        ),
                        //const SizedBox(width: 4,),
                        Icon(
                          Icons.g_mobiledata,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Text(
                      "Vous avez deja un compte?",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'popping',
                          fontSize: 11),
                    ),
                    TextButton(
                      onPressed: () {
                        showAboutDialog(context: context);
                      },
                      child: const Text(
                        "se connecter",
                        style: TextStyle(
                            color: Color.fromRGBO(42, 114, 221, 1),
                            fontFamily: 'popping',
                            fontSize: 11),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ));
    },
  );
}
