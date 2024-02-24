//cette page est la page d'accueil de l'application, c'est la premiere page qui s'affiche lorsque

import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/commentaireContainer.widget.dart';
import 'package:consulting_app/widgets/consultingContainer.widget.dart';
import 'package:consulting_app/widgets/custom_Appbar.widget.dart';
import 'package:consulting_app/widgets/drawer_menu.widget.dart';
import 'package:consulting_app/widgets/imageAndtextAndmoneyContainer.widget.dart';
import 'package:consulting_app/widgets/offre.widget.dart';
import 'package:consulting_app/widgets/searchbar.widget.dart';
import 'package:consulting_app/widgets/textAndimageContainer.widget.dart';
import 'package:consulting_app/widgets/zoomOnContainer.dart';
import 'package:flutter/material.dart';

import '../widgets/footer.widget.dart';

class Newhomepage extends StatefulWidget {
  Newhomepage({super.key});

  @override
  State<Newhomepage> createState() => _NewhomepageState();
}

class _NewhomepageState extends State<Newhomepage> {
  final PageController _controller = PageController();
  final PageController _commentcontroller = PageController();
  final PageController _consultingcontroller = PageController();
  bool isHovered = false;
  final List<ServiceContainerWidget> mesWidgets = [
    ServiceContainerWidget(
        imagecontainer: const AssetImage(
            'assets/images/Vivez-une-CAN-DE-reve4-400x300.jpg'),
        principaltext: TextButton(
            onPressed: () {},
            child: const Text(
                "Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300",
                style: TextStyle(color: Colors.black, fontFamily: 'popping'))),
        trueicon: const Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
        localisationtext: TextButton(
            onPressed: () {},
            child: const Text("Yaoundé",
                style: TextStyle(color: Colors.black, fontFamily: 'popping'))),
        pricetext: const Text("2,500,000 FCFA")),

    ServiceContainerWidget(
        imagecontainer: const AssetImage(
            'assets/images/Vivez-une-CAN-DE-reve4-400x300.jpg'),
        principaltext: TextButton(
            onPressed: () {},
            child: const Text(
                "Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300",
                style: TextStyle(color: Colors.black, fontFamily: 'popping'))),
        trueicon: const Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
        localisationtext: TextButton(
            onPressed: () {},
            child: const Text("Yaoundé",
                style: TextStyle(color: Colors.black, fontFamily: 'popping'))),
        pricetext: const Text("2,500,000 FCFA")),
    ServiceContainerWidget(
        imagecontainer: const AssetImage(
            'assets/images/Vivez-une-CAN-DE-reve4-400x300.jpg'),
        principaltext: TextButton(
            onPressed: () {},
            child: const Text(
                "Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300",
                style: TextStyle(color: Colors.black, fontFamily: 'popping'))),
        trueicon: const Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
        localisationtext: TextButton(
            onPressed: () {},
            child: const Text("Yaoundé",
                style: TextStyle(color: Colors.black, fontFamily: 'popping'))),
        pricetext: const Text("2,500,000 FCFA")),
    ServiceContainerWidget(
        imagecontainer: const AssetImage(
            'assets/images/Vivez-une-CAN-DE-reve4-400x300.jpg'),
        principaltext: TextButton(
            onPressed: () {},
            child: const Text(
                "Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300",
                style: TextStyle(color: Colors.black, fontFamily: 'popping'))),
        trueicon: const Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
        localisationtext: TextButton(
            onPressed: () {},
            child: const Text("Yaoundé",
                style: TextStyle(color: Colors.black, fontFamily: 'popping'))),
        pricetext: const Text("2,500,000 FCFA")),
    ServiceContainerWidget(
        imagecontainer: const AssetImage(
            'assets/images/Vivez-une-CAN-DE-reve4-400x300.jpg'),
        principaltext: TextButton(
            onPressed: () {},
            child: const Text(
                "Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300",
                style: TextStyle(color: Colors.black, fontFamily: 'popping'))),
        trueicon: const Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
        localisationtext: TextButton(
            onPressed: () {},
            child: const Text("Yaoundé",
                style: TextStyle(color: Colors.black, fontFamily: 'popping'))),
        pricetext: const Text("2,500,000 FCFA")),

    // Ajoutez autant de widgets que vous le souhaitez...
  ];

  final List<CommentaireWidget> commentWidgets = [
    CommentaireWidget(
        imagepath: 'assets/images/avatar-2-1.png',
        date: '12 janvier 2021',
        text: TextButton(
            onPressed: () {},
            child: const Text(
              "original",
              style: TextStyle(color: Colors.black, fontFamily: 'popping'),
            )),
        name: "Jorden feuse",
        paragraphe:
            "c'est une tres bonne application, et j'arrive à publier mes offres et à postules pour des offres sans soucis"),
    CommentaireWidget(
        imagepath: 'assets/images/avatar-2-1.png',
        date: '12 janvier 2021',
        text: TextButton(
            onPressed: () {},
            child: const Text(
              "original",
              style: TextStyle(color: Colors.black, fontFamily: 'popping'),
            )),
        name: "Jorden feuse",
        paragraphe:
            "c'est une tres bonne application, et j'arrive à publier mes offres et à postules pour des offres sans soucis"),
    CommentaireWidget(
        imagepath: 'assets/images/avatar-2-1.png',
        date: '12 janvier 2021',
        text: TextButton(
            onPressed: () {},
            child: const Text(
              "original",
              style: TextStyle(color: Colors.black, fontFamily: 'popping'),
            )),
        name: "Jorden feuse",
        paragraphe:
            "c'est une tres bonne application, et j'arrive à publier mes offres et à postules pour des offres sans soucis"),
  ];
  final List<ConsultingContainerWidget> consultingWidgets = [
    const ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
    const ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
    const ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
    const ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
    const ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
    const ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
    const ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Passez le widget appbar que vous voulez utiliser comme paramètre appBar
      appBar: const MyAppBar(),
      //endDrawer: const Drawermenu(),

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
                              fontSize: 60.0,
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
                      child: Searchbar2(
                        onPressed: () async {
                          // Votre code asynchrone ici...
                          // Par exemple, vous pouvez simuler une opération de chargement avec un délai :
                          await Future.delayed(const Duration(seconds: 10));
                        },
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Wrap(
                        alignment: WrapAlignment.center,
                        spacing:8,
                        direction: Axis.horizontal,
                        children: [
                          //const SizedBox(width: 100),
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
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0)),
                              ),
                            ),
                            child: const Text(
                              'BUSINESS',
                            ),
                          ),
                          //const SizedBox(width: 8.0),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: BUTTON_COLOR,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0)),
                              ),
                            ),
                            child: const Text(
                              'ANIMATION',
                            ),
                          ),
                          //const SizedBox(width: 8.0),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: BUTTON_COLOR,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0)),
                              ),
                            ),
                            child: const Text(
                              'FLYER',
                            ),
                          ),
                          //const SizedBox(width: 8.0),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: BUTTON_COLOR,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0)),
                              ),
                            ),
                            child: const Text(
                              'COMMERCIAL',
                            ),
                          ),
                          //const SizedBox(width: 8.0),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: BUTTON_COLOR,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0)),
                              ),
                            ),
                            child: const Text(
                              'VIDEO',
                            ),
                          ),
                        ]),
                    const SizedBox(height: 400.0),
                    Center(
                        child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.yellow,
                        fixedSize: const Size(500, 80),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text("voir toutes les publications d'offres",
                          style: TextStyle(color: Colors.black)),
                    )),
                    const SizedBox(height: 70.0),
                    const Center(
                        child: Text(
                      "Nos catégories d'offres les plus populaires",
                      style: TextStyle(color: BUTTON_COLOR, fontSize: 30.0),
                    )),
                    const SizedBox(height: 15.0),
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        // Calculez la largeur de chaque widget TextAndContainerWidget en divisant la largeur totale par le nombre de widgets par ligne
                        double width = constraints.maxWidth /
                            3; // Changez ce nombre pour contrôler combien de widgets par ligne

                        // Créez une liste de vos widgets TextAndContainerWidget avec la largeur calculée.
                        List<ZoomOnHover> mesWidgets = [
                          ZoomOnHover(
                            child: TextAndContainerButton(
                              width: 200,
                              height: 60,
                              image: 'assets/images/personnal.png',
                              text1: const Text('Communication '),
                            ),
                          ),
                          ZoomOnHover(
                            child: TextAndContainerButton(
                              width: 250,
                              height: 60,
                              image: 'assets/images/ballon.png',
                              text1: const Text('Special Can Total 2023'),
                            ),
                          ),
                          ZoomOnHover(
                            child: TextAndContainerButton(
                              width: 250,
                              height: 60,
                              image: 'assets/images/ballonfeuille.png',
                              text1: const Text('Agriculture/Agronomie'),
                            ),
                          ),
                          ZoomOnHover(
                            child: TextAndContainerButton(
                              width: 200,
                              height: 60,
                              image: 'assets/images/etoile.png',
                              text1: const Text('Evenementiels'),
                            ),
                          ),
                          ZoomOnHover(
                            child: TextAndContainerButton(
                              width: 280,
                              height: 60,
                              image: 'assets/images/veilleuse.png',
                              text1: const Text(
                                  'BTP (Bâtiment et travaux public)'),
                            ),
                          ),
                          ZoomOnHover(
                            child: TextAndContainerButton(
                              width: 230,
                              height: 60,
                              image: 'assets/images/cloche.png',
                              text1: const Text('Marketing digital'),
                            ),
                          ),
                          ZoomOnHover(
                            child: TextAndContainerButton(
                              width: 200,
                              height: 60,
                              image: 'assets/images/money.png',
                              text1: const Text('Finances'),
                            ),
                          ),
                          ZoomOnHover(
                            child: TextAndContainerButton(
                              width: 250,
                              height: 60,
                              image: 'assets/images/climatiseur.png',
                              text1: const Text('Froid et climatisation'),
                            ),
                          ),
                        ];

                        // Utilisez le widget Wrap pour afficher vos widgets.
                        return Wrap(
                          //direction: Axis.vertical,
                          spacing: 40,
                          runSpacing: 40,
                          children: mesWidgets,
                        );
                      },
                    ),
                    const SizedBox(height: 70.0),
                    const Center(
                        child: Text(
                      "Offres récemment présentées",
                      style: TextStyle(color: BUTTON_COLOR, fontSize: 30.0),
                    )),
                    const Center(
                      child: Column(
                        children: [
                          OffresWidget(
                              firstext: "Doigt de fées",
                              pricetext: "150.000 FCFA",
                              datetext: "12 septembre 2020"),
                          SizedBox(height: 10.0),
                          OffresWidget(
                              firstext: "Doigt de fées",
                              pricetext: "150.000 FCFA",
                              datetext: "12 septembre 2020"),
                          OffresWidget(
                              firstext: "Doigt de fées",
                              pricetext: "150.000 FCFA",
                              datetext: "12 septembre 2020"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 70.0),
                    const Center(
                        child: Text(
                      "Services proposés",
                      style: TextStyle(color: BUTTON_COLOR, fontSize: 30.0),
                    )),
                    const SizedBox(height: 10.0),
                    const Center(
                      child: Text(
                        "Quelques services de haute qualité sélectionnés par notre personnel.",
                        style: TextStyle(color: Colors.grey, fontSize: 15.0),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 500.0,
                          child: ListView.separated(
                            controller: _controller,
                            scrollDirection: Axis.horizontal,
                            itemCount: mesWidgets.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              width: 12.0,
                            ),
                            itemBuilder: (context, index) {
                              return mesWidgets[index];
                            },
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom:
                              250, // Ajustez cette valeur en fonction de vos besoins
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    icon: const Icon(
                                        Icons.keyboard_arrow_left_sharp,
                                        color: Colors.grey),
                                    onPressed: () {
                                      _controller.previousPage(
                                        duration: const Duration(seconds: 1),
                                        curve: Curves.ease,
                                      );
                                    },
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    icon: const Icon(Icons.keyboard_arrow_right,
                                        color: Colors.grey),
                                    onPressed: () {
                                      _controller.nextPage(
                                        duration: const Duration(seconds: 1),
                                        curve: Curves.ease,
                                      );
                                    },
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50.0),
                    Stack(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 600,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/boss.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Column(children: [
                                Center(
                                    child: Text(
                                  "Avis des clients",
                                  style: TextStyle(
                                      color: BUTTON_COLOR, fontSize: 30.0),
                                )),
                                SizedBox(height: 10.0),
                                Center(
                                  child: Text(
                                    "Consultez les avis vérifiés de clients payants.",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15.0),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  height: 200.0,
                                  width: 400.0,
                                  margin: const EdgeInsets.only(
                                      top: 150.0, right: 900.0),
                                  child: ListView.separated(
                                    controller: _commentcontroller,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: commentWidgets.length,
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(
                                      width: 10.0,
                                    ),
                                    itemBuilder: (context, index) {
                                      return commentWidgets[index];
                                    },
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 40.0),
                                  child: Row(children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                        icon: const Icon(
                                            Icons.keyboard_arrow_left_sharp,
                                            color: Colors.grey),
                                        onPressed: () {
                                          _commentcontroller.previousPage(
                                            duration:
                                                const Duration(seconds: 1),
                                            curve: Curves.ease,
                                          );
                                        },
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                        icon: const Icon(
                                            Icons.keyboard_arrow_right,
                                            color: Colors.grey),
                                        onPressed: () {
                                          _commentcontroller.nextPage(
                                            duration:
                                                const Duration(seconds: 1),
                                            curve: Curves.ease,
                                          );
                                        },
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: APPBAR_COLOR,
                                backgroundColor: APPBAR_COLOR,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              child: const Text(
                                'Consulter les services',
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'popping'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15.0),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 700),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Wrap(
                              children: [
                                const Center(
                                    child: Text(
                                  "Les meilleurs consultants",
                                  style: TextStyle(
                                      color: BUTTON_COLOR, fontSize: 30.0),
                                )),
                                const SizedBox(height: 15.0),
                                const Center(
                                  child: Text(
                                    "Nos professionnels les plus populaires et les plus fiables.",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15.0),
                                  ),
                                ),
                                const SizedBox(height: 15.0),
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 400.0,
                                      child: ListView.separated(
                                        controller: _consultingcontroller,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: mesWidgets.length,
                                        separatorBuilder: (context, index) =>
                                            const SizedBox(
                                          width: 12.0,
                                        ),
                                        itemBuilder: (context, index) {
                                          return consultingWidgets[index];
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom:
                                          150, // Ajustez cette valeur en fonction de vos besoins
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: IconButton(
                                                icon: const Icon(
                                                    Icons
                                                        .keyboard_arrow_left_sharp,
                                                    color: Colors.grey),
                                                onPressed: () {
                                                  _consultingcontroller
                                                      .previousPage(
                                                    duration: const Duration(
                                                        seconds: 1),
                                                    curve: Curves.ease,
                                                  );
                                                },
                                              ),
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: IconButton(
                                                icon: const Icon(
                                                    Icons.keyboard_arrow_right,
                                                    color: Colors.grey),
                                                onPressed: () {
                                                  _consultingcontroller
                                                      .nextPage(
                                                    duration: const Duration(
                                                        seconds: 1),
                                                    curve: Curves.ease,
                                                  );
                                                },
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Footer1(),
    );
  }
}
