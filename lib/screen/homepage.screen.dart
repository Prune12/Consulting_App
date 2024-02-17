//cette page est la page d'accueil de l'application, c'est la premiere page qui s'affiche lorsque

import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/custom_Appbar.widget.dart';
import 'package:consulting_app/widgets/drawer_menu.widget.dart';
import 'package:consulting_app/widgets/searchbar.widget.dart';
import 'package:consulting_app/widgets/textAndimageContainer.widget.dart';
import 'package:consulting_app/widgets/zoomOnContainer.dart';
import 'package:flutter/material.dart';

import '../widgets/footer.widget.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Passez le widget appbar que vous voulez utiliser comme paramètre appBar
      appBar: CustomAppBar(
        //title: '3M CONSULTING',
        color: APPBAR_COLOR,
        logo: 'assets/images/3M Consulting.png',
      ),
      endDrawer: const Drawermenu(),

      // Passez le widget de contenu principal que vous voulez afficher comme paramètre body
      body: SingleChildScrollView(
        child: Wrap(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/consulting01.jpg'), // On utilise AssetImage pour charger une image depuis les assets
                        fit: BoxFit
                            .cover, // On utilise BoxFit.cover pour adapter l'image à la taille du Container
                        alignment: Alignment
                            .center, // On utilise Alignment.center pour centrer l'image dans le Container)
                      ),
                    )),
                Column(
                  children: <Widget>[
                    const Center(
                      child: Text("FAITE VOTRE BOULOT!",
                          style: TextStyle(
                              fontSize: 80.0,
                              color: Colors.white,
                              fontFamily: 'popping')),
                    ),
                    const Center(
                      child: Text(
                        "Plus de 10 000 freelances pour réaliser toutes sortes de tâches",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontFamily: 'popping'),
                      ),
                    ),
                     Center(
                      child: Searchbar(
                        onPressed: () async {
              // Votre code asynchrone ici...
              // Par exemple, vous pouvez simuler une opération de chargement avec un délai :
              await Future.delayed(Duration(seconds: 10));
            },
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Wrap(
                        alignment: WrapAlignment.center,
                        direction: Axis.horizontal,
                        children: [
                          const SizedBox(width: 100),
                          const Text("Populaire :",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontFamily: 'popping')),
                          const SizedBox(width: 20.0),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: BUTTON_COLOR,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              'BUSINESS',
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: BUTTON_COLOR,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              'ANIMATION',
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: BUTTON_COLOR,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              'FLYER',
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: BUTTON_COLOR,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              'COMMERCIAL',
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: BUTTON_COLOR,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              'VIDEO',
                            ),
                          ),
                        ]),
                    const SizedBox(height: 200.0),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 324,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          //spacing: 30.0,
                          children: [
                            TextAndContainerWidget(
                                height: 240.0,
                                width: 300,
                                image:
                                    const AssetImage('assets/images/rosee.png'),
                                text1: const Text(
                                  "Trouver un consultant",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 24.0),
                                ),
                                text2: const Text(
                                  "Aliquam pretium fringilla augue orci dictum sollicitudin purus risus laoreet justo.",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16.0),
                                )),
                            TextAndContainerWidget(
                              height: 240.0,
                              width: 300,
                              image:
                                  const AssetImage('assets/images/imag22.png'),
                              text1: const Text(
                                "Trouver un consultant",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 24.0),
                              ),
                              text2: const Text(
                                "Aliquam pretium fringilla augue orci dictum sollicitudin purus risus laoreet justo.",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16.0),
                              ),
                            ),
                            TextAndContainerWidget(
                                height: 240.0,
                                width: 300,
                                image:
                                    const AssetImage('assets/images/img11.png'),
                                text1: const Text(
                                  "Trouver un consultant",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 24.0),
                                ),
                                text2: const Text(
                                  "Aliquam pretium fringilla augue orci dictum sollicitudin purus risus laoreet justo.",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16.0),
                                )),
                          ],
                        ),
                      ),
                    ),
                    const Center(
                        child: Text(
                      "Meilleurs Travail à faire Disponible",
                      style: TextStyle(color: BUTTON_COLOR, fontSize: 30.0),
                    )),
                    const SizedBox(height: 10.0),
                    const Center(
                      child: Text(
                        "Découvrez les catégories de services les plus populaires.",
                        style: TextStyle(color: Colors.grey, fontSize: 15.0),
                      ),
                    ),
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        // Calculez la largeur de chaque widget TextAndContainerWidget en divisant la largeur totale par le nombre de widgets par ligne
                        double width = constraints.maxWidth /
                            4; // Changez ce nombre pour contrôler combien de widgets par ligne

                        // Créez une liste de vos widgets TextAndContainerWidget avec la largeur calculée.
                        List<ZoomOnHover> mesWidgets = [
                          ZoomOnHover(child: 
                          InkWell(
                            onTap: () {},
                            child: TextAndContainerWidget(
                              height: 200,
                              width: width,
                              image: AssetImage('assets/images/personnal.png'),
                              text1: Text('Communication '),
                              text2: Text('Digital'),
                            ),
                          ),),
                          ZoomOnHover(child: InkWell(
                            onTap: () {},
                            child: TextAndContainerWidget(
                              height: 300,
                              width: width,
                              image: AssetImage('assets/images/ballon.png'),
                              text1: Text('Special Can Total'),
                              text2: Text('2023'),
                            ),
                          ),),
                          ZoomOnHover(child: InkWell(
                            onTap: () {},
                            child: TextAndContainerWidget(
                              height: 200,
                              width: width,
                              image:
                                  AssetImage('assets/images/ballonfeuille.png'),
                              text1: Text('Agriculture/Agro'),
                              text2: Text('nomie'),
                            ),
                          ),),
                          ZoomOnHover(child: InkWell(
                            onTap: () {},
                            child: TextAndContainerWidget(
                              height: 200,
                              width: width,
                              image: AssetImage('assets/images/etoile.png'),
                              text1: Text('Evenementiels'),
                              text2: Text(' '),
                            ),
                          ),),
                          ZoomOnHover(child: InkWell(
                            onTap: () {},
                            child: TextAndContainerWidget(
                              height: 200,
                              width: width,
                              image: AssetImage('assets/images/veilleuse.png'),
                              text1: Text('BTP (Bâtiment et '),
                              text2: Text('travaux public)'),
                            ),
                          ),),
                          ZoomOnHover(child: InkWell(
                            onTap: () {},
                            child: TextAndContainerWidget(
                              height: 200,
                              width: width,
                              image: AssetImage('assets/images/cloche.png'),
                              text1: Text('Marketing digital'),
                              text2: Text(' '),
                            ),
                          ),),
                          ZoomOnHover(child: InkWell(
                            onTap: () {},
                            child: TextAndContainerWidget(
                              height: 200,
                              width: width,
                              image: AssetImage('assets/images/money.png'),
                              text1: Text('Finances'),
                              text2: Text(' '),
                            ),
                          ),),
                          ZoomOnHover(child: InkWell(
                            onTap: () {},
                            child: TextAndContainerWidget(
                              height: 200,
                              width: width,
                              image:
                                  AssetImage('assets/images/climatiseur.png'),
                              text1: Text('Froid et '),
                              text2: Text('climatisation'),
                            ),
                          ),),
                        ];

                        // Utilisez le widget Wrap pour afficher vos widgets.
                        return Wrap(
                          children: mesWidgets,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
