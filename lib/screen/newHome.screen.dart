//cette page est la page d'accueil de l'application, c'est la premiere page qui s'affiche lorsque

import 'dart:async';

import 'package:consulting_app/routes/app.routes.dart';
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
  final PageController _commentcontroller2 = PageController();
  final PageController _consultingcontroller = PageController();
  bool _showButton = true;

  bool isHovered = false;
  //liste d'images
  final List<String> imagePaths = [
    'assets/images/DRK_B1.JPG',
    // 'assets/images/DRK_4859.JPG',
    'assets/images/DRK_4706.JPG',
    'assets/images/DRK_4857.JPG',
  ];

int currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % imagePaths.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }












  final List<ZoomOnHover> mesWidgets = [
    ZoomOnHover(
      child: ServiceContainerWidget(
          imagecontainer: const AssetImage(
              'assets/images/Vivez-une-CAN-DE-reve4-400x300.jpg'),
          principaltext: TextButton(
              onPressed: () {},
              child: const Text(
                  "Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300",
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'popping'))),
          trueicon: const Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          localisationtext: TextButton(
              onPressed: () {},
              child: const Text("Yaoundé",
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'popping'))),
          pricetext: const Text("2,500,000 FCFA")),
    ),

    ZoomOnHover(
      child: ServiceContainerWidget(
          imagecontainer: const AssetImage(
              'assets/images/Vivez-une-CAN-DE-reve4-400x300.jpg'),
          principaltext: TextButton(
              onPressed: () {},
              child: const Text(
                  "Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300",
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'popping'))),
          trueicon: const Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          localisationtext: TextButton(
              onPressed: () {},
              child: const Text("Yaoundé",
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'popping'))),
          pricetext: const Text("2,500,000 FCFA")),
    ),
    ZoomOnHover(
      child: ServiceContainerWidget(
          imagecontainer: const AssetImage(
              'assets/images/Vivez-une-CAN-DE-reve4-400x300.jpg'),
          principaltext: TextButton(
              onPressed: () {},
              child: const Text(
                  "Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300",
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'popping'))),
          trueicon: const Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          localisationtext: TextButton(
              onPressed: () {},
              child: const Text("Yaoundé",
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'popping'))),
          pricetext: const Text("2,500,000 FCFA")),
    ),
    ZoomOnHover(
      child: ServiceContainerWidget(
          imagecontainer: const AssetImage(
              'assets/images/Vivez-une-CAN-DE-reve4-400x300.jpg'),
          principaltext: TextButton(
              onPressed: () {},
              child: const Text(
                  "Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300",
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'popping'))),
          trueicon: const Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          localisationtext: TextButton(
              onPressed: () {},
              child: const Text("Yaoundé",
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'popping'))),
          pricetext: const Text("2,500,000 FCFA")),
    ),
    ZoomOnHover(
      child: ServiceContainerWidget(
          imagecontainer: const AssetImage(
              'assets/images/Vivez-une-CAN-DE-reve4-400x300.jpg'),
          principaltext: TextButton(
              onPressed: () {},
              child: const Text(
                  "Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300 Vivez-une-CAN-DE-reve-400x300",
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'popping'))),
          trueicon: const Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          localisationtext: TextButton(
              onPressed: () {},
              child: const Text("Yaoundé",
                  style:
                      TextStyle(color: Colors.black, fontFamily: 'popping'))),
          pricetext: const Text("2,500,000 FCFA")),
    ),
    ZoomOnHover(
      child: const VoirplusService(),
    )

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
  final List<CommentaireWidget> commentWidgets2 = [
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
     ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
     ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
     ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
     ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
     ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
     ConsultingContainerWidget(
        nomconsultant: "Matthieu",
        imageconsultant: AssetImage('assets/images/boss.jpg')),
     ConsultingContainerWidget(
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
                //<--- container contenant l'image de fond du 3M consulting
                Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 0.8,
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
                //---> fin du container
             Container(
              padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.8,),
          width: MediaQuery.of(context).size.width ,
          height: 1100,
          child: AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: Image.asset(
              imagePaths[currentIndex],
              key: ValueKey<int>(currentIndex),
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
      height: 1100
            ),)),






                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.4,
                          top: MediaQuery.of(context).size.height * 0.1),
                      child: const Text("FAITE VOTRE BOULOT!",
                          style: TextStyle(
                              fontSize: 60.0,
                              color: Colors.white,
                              fontFamily: 'popping')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.4,
                      ),
                      child: const Text(
                        "Plus de 10 000 freelances pour réaliser toutes sortes de tâches",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontFamily: 'popping'),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.13,
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                    Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 8,
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
                    //const SizedBox(height: 400.0),
                    Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.sizeOf(context).height * 0.135,
                            right: MediaQuery.sizeOf(context).width * 0.07),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, AppRoutes.offre);
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: APPBAR_COLOR,
                            fixedSize: const Size(507, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                              "voir toutes les publications d'offres",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'popping',
                                  fontSize: 24)),
                        )),
                    const SizedBox(height: 70.0),
                    Padding(
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.3,
                        ),
                        child: const Text(
                          "Nos catégories d'offres les plus populaires",
                          style: TextStyle(
                              color: BUTTON_COLOR,
                              fontSize: 35.0,
                              fontFamily: 'popping'),
                        )),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          // Calculez la largeur de chaque widget TextAndContainerWidget en divisant la largeur totale par le nombre de widgets par ligne
                          double width = constraints.maxWidth /
                              5; // Changez ce nombre pour contrôler combien de widgets par ligne

                          // Créez une liste de vos widgets TextAndContainerWidget avec la largeur calculée.
                          List<ZoomOnHover> mesWidgets = [
                            ZoomOnHover(
                              child: TextAndContainerButton(
                                width: width,
                                height: 60,
                                image: 'assets/images/personnal.png',
                                text1: const Text(
                                  'Communication ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            ZoomOnHover(
                              child: TextAndContainerButton(
                                width: width,
                                height: 63,
                                image: 'assets/images/money.png',
                                text1: const Text(
                                  'Finances',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            ZoomOnHover(
                              child: TextAndContainerButton(
                                width: width,
                                height: 65,
                                image: 'assets/images/ballon.png',
                                text1: const Text(
                                  'Special Can Total 2023',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            ZoomOnHover(
                              child: TextAndContainerButton(
                                width: 379,
                                height: 65,
                                image: 'assets/images/veilleuse.png',
                                text1: const Text(
                                    'BTP (Bâtiment et travaux public)',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            ),
                            ZoomOnHover(
                              child: TextAndContainerButton(
                                width: 535,
                                height: 65,
                                image: 'assets/images/cloche.png',
                                text1: const Text(
                                  'Marketing Digital , Actuariat && Teleinformatique ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            ZoomOnHover(
                              child: TextAndContainerButton(
                                width: 317,
                                height: 65,
                                image: 'assets/images/ballonfeuille.png',
                                text1: const Text('Agriculture/Agronomie',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            ),
                            ZoomOnHover(
                              child: TextAndContainerButton(
                                width: 297,
                                height: 60,
                                image: 'assets/images/climatiseur.png',
                                text1: const Text('Froid et climatisation',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            ),
                            ZoomOnHover(
                              child: TextAndContainerButton(
                                width: width,
                                height: 60,
                                image: 'assets/images/etoile.png',
                                text1: const Text('Evenementiels',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
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
                    ),
                    const SizedBox(height: 70.0),
                    Padding(
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.5,
                        ),
                        child: const Text(
                          "Offres récemment présentées",
                          style: TextStyle(color: BUTTON_COLOR, fontSize: 35.0),
                        )),

                    // padding: EdgeInsets.only(top: 5),
                    Divider(
                      color: BUTTON_COLOR,
                      height: 20,
                      indent: MediaQuery.of(context).size.width * 0.08,
                      endIndent: MediaQuery.of(context).size.width * 0.1,
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    Padding(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.14,
                      ),
                      child: Wrap(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        direction: Axis.vertical,
                        spacing: 10,
                        children: [
                          OffresWidget(
                            imageoffre: "assets/images/image-22-1.jpg",
                            descriptiontext: "Strategies de consulting",
                            pricetext: "150.000 FCFA",
                            datetext: "il y a 1 heure",
                            onpressed: () {
                              Navigator.pushReplacementNamed(context, AppRoutes.desoffre);
                            },
                            ontap:(){}
                            
                          ),
                          const SizedBox(height: 10.0),
                          OffresWidget(
                            imageoffre: "assets/images/image-22-1.jpg",
                            descriptiontext: "Strategies de consulting",
                            pricetext: "150.000 FCFA",
                            datetext: "il y a 3 jours",
                            onpressed: () {
                              Navigator.pushReplacementNamed(context, AppRoutes.desoffre);
                            },
                             ontap:(){}
                          ),
                          OffresWidget(
                            imageoffre: "assets/images/image-22-1.jpg",
                            descriptiontext: "Strategies de consulting",
                            pricetext: "150.000 FCFA",
                            datetext: "il y a 2 jours",
                           onpressed: () {
                              Navigator.pushReplacementNamed(context, AppRoutes.desoffre);
                            },
                             ontap:(){}
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 70.0),
                    Padding(
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.6,
                        ),
                        child: const Text(
                          "Services proposés",
                          style: TextStyle(
                              color: BUTTON_COLOR,
                              fontSize: 35.0,
                              fontFamily: 'popping'),
                        )),

                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.5,
                      ),
                      child: const Text(
                        "Quelques services de haute qualité sélectionnés par notre personnel.",
                        style: TextStyle(color: Colors.grey, fontSize: 15.0),
                      ),
                    ),
                    const SizedBox(height: 30.0),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 200.0,
                                        width: 400.0,
                                        margin: const EdgeInsets.only(
                                            top: 150.0, left: 200.0),
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
                                      const SizedBox(
                                        width: 50.0,
                                      ),
                                      Container(
                                        height: 200.0,
                                        width: 400.0,
                                        margin: const EdgeInsets.only(
                                            top: 150.0, right: 200.0),
                                        child: ListView.separated(
                                          controller: _commentcontroller2,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: commentWidgets2.length,
                                          separatorBuilder: (context, index) =>
                                              const SizedBox(
                                            width: 10.0,
                                          ),
                                          itemBuilder: (context, index) {
                                            return commentWidgets2[index];
                                          },
                                        ),
                                      ),
                                    ]),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.3,
                                      top: 60),
                                  child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
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
                                              _commentcontroller2.previousPage(
                                                duration:
                                                    const Duration(seconds: 1),
                                                curve: Curves.ease,
                                              );
                                            },
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 400.0,
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
                                              _commentcontroller2.nextPage(
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
                        const SizedBox(height: 35.0),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.9,left:50),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _showButton
                                    ? FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            _showButton = false;
                                          });
                                        },
                                        backgroundColor: const Color.fromRGBO(
                                            181, 185, 160, 0.55),
                                        heroTag: null,
                                        elevation: 20,
                                        child: Image.asset(
                                            "assets/images/money.png",
                                            color: Colors.black,width: 200,height: 200,),
                                      )
                                    : ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(context, AppRoutes.devenirconsult);
                                        },
                                        child: const Text(
                                            "GAGNER DE L'ARGENT EN TRAVAILLANT EN FREELANCE",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'popping',
                                                fontSize: 20)),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(
                                              181, 185, 160, 0.55),
                                          fixedSize: const Size(600, 58),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                              ]),
                        ),
                        const SizedBox(height: 15.0),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 700),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.55),
                                    child: const Text(
                                      "Les meilleurs consultants",
                                      style: TextStyle(
                                          color: BUTTON_COLOR,
                                          fontSize: 35.0,
                                          fontFamily: 'popping'),
                                    )),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.55),
                                  child: const Text(
                                    "Nos professionnels les plus populaires et les plus fiables.",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15.0,
                                        fontFamily: 'popping'),
                                  ),
                                ),
                                const SizedBox(height: 15.0),
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 450.0,
                                      child: ListView.separated(
                                        controller: _consultingcontroller,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: consultingWidgets.length,
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
                                          175, // Ajustez cette valeur en fonction de vos besoins
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
                    Container(
                        height: MediaQuery.of(context).size.height + 570,
                        width: MediaQuery.of(context).size.width * 0.98,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: APPBAR_COLOR,
                        ),
                        child: Column(children: [
                          const SizedBox(height: 10.0),
                          Padding(
                              padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * 0.25,
                              ),
                              child: const Text(
                                "Rendre réel avec 3mc consulting",
                                style: TextStyle(
                                    color: BUTTON_COLOR,
                                    fontSize: 50.0,
                                    fontFamily: 'Jacques Francois'),
                              )),
                          const SizedBox(height: 40.0),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.9,
                              // color: Color.fromARGB(31, 0, 0, 0),
                              child: Column(children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.65,
                                    ),
                                    child: const Text(
                                      "Les meilleurs talents",
                                      style: TextStyle(
                                          color: Color.fromRGBO(109, 8, 8, 1),
                                          fontSize: 35.0,
                                          fontFamily: 'Jacques Francois'),
                                    )),
                                const SizedBox(height: 20.0),
                                Padding(
                                    padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.3,
                                    ),
                                    child: const Text(
                                      "Découvrez des professionnels fiables en explorant leurs portfolios et en vous plongeant dans les retours partagés sur leurs profils.",
                                      style: TextStyle(
                                          color: BUTTON_COLOR,
                                          fontSize: 24.0,
                                          fontFamily: 'Jacques Francois'),
                                    )),
                              ])),
                          const SizedBox(height: 20.0),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.8,
                            color: const Color.fromARGB(12, 0, 0, 0),
                            child: Column(children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width *
                                        0.51,
                                  ),
                                  child: const Text(
                                    "Un travail de qualité",
                                    style: TextStyle(
                                        color: Color.fromRGBO(109, 8, 8, 1),
                                        fontSize: 35.0,
                                        fontFamily: 'Jacques Francois'),
                                  )),
                              const SizedBox(height: 20.0),
                              Padding(
                                  padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.06,
                                      left: 50),
                                  child: const Text(
                                    "3mc met a votre disposition des professionnels, à portée de main, vous trouverez des talents de qualité pour réaliser ce dont vous avez besoin, des freelence egalement des consultants certifies.",
                                    style: TextStyle(
                                        color: BUTTON_COLOR,
                                        fontSize: 24.0,
                                        fontFamily: 'Jacques Francois'),
                                  )),
                            ]),
                          ),
                          const SizedBox(height: 20.0),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.9,
                              color: const Color.fromARGB(12, 0, 0, 0),
                              child: Column(children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.51,
                                    ),
                                    child: const Text(
                                      "Nous sommes là pour vous aider",
                                      style: TextStyle(
                                          color: Color.fromRGBO(109, 8, 8, 1),
                                          fontSize: 35.0,
                                          fontFamily: 'Jacques Francois'),
                                    )),
                                const SizedBox(height: 20.0),
                                Padding(
                                    padding: EdgeInsets.only(
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.06,
                                        left: 25),
                                    child: const Text(
                                      "Votre temps est précieux.  Laissez notre équipe de recruteurs et de copilotes experts vous faire gagner du temps dans la recherche de talents, voire dans la gestion de votre travail si nécessaire.",
                                      style: TextStyle(
                                          color: BUTTON_COLOR,
                                          fontSize: 24.0,
                                          fontFamily: 'Jacques Francois'),
                                    )),
                              ])),
                          const SizedBox(height: 20.0),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.8,
                              color: const Color.fromARGB(12, 0, 0, 0),
                              child: Column(children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.51,
                                    ),
                                    child: const Text(
                                      "Publiez votre emploi",
                                      style: TextStyle(
                                          color: Color.fromRGBO(109, 8, 8, 1),
                                          fontSize: 35.0,
                                          fontFamily: 'Jacques Francois'),
                                    )),
                                const SizedBox(height: 20.0),
                                Padding(
                                    padding: EdgeInsets.only(
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.06,
                                        left: 50),
                                    child: const Text(
                                      "C'est gratuit et facile !  Obtenez de nombreuses offres compétitives adaptées à votre budget en quelques minutes.  Commencez à faire de vos rêves une réalité.",
                                      style: TextStyle(
                                          color: BUTTON_COLOR,
                                          fontSize: 24.0,
                                          fontFamily: 'Jacques Francois'),
                                    )),
                              ])),
                          const SizedBox(height: 20.0),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.9,
                              color: const Color.fromARGB(12, 0, 0, 0),
                              child: Column(children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.6,
                                    ),
                                    child: const Text(
                                      "Payez en toute sécurité",
                                      style: TextStyle(
                                          color: Color.fromRGBO(109, 8, 8, 1),
                                          fontSize: 35.0,
                                          fontFamily: 'Jacques Francois'),
                                    )),
                                const SizedBox(height: 20.0),
                                Padding(
                                    padding: EdgeInsets.only(
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.06,
                                        left: 25),
                                    child: const Text(
                                      "Ne payez le travail que lorsque vous êtes satisfait à 100 % du résultat.  Notre système de paiement d’étape vous protège à chaque étape du processus.",
                                      style: TextStyle(
                                          color: BUTTON_COLOR,
                                          fontSize: 24.0,
                                          fontFamily: 'Jacques Francois'),
                                    )),
                              ])),
                          const SizedBox(height: 60.0),
                          Padding(
                              padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width * 0.3,
                                  left: 20),
                              child: TextButton(
                                  onPressed: () {
                                    showLoginDialog(context);
                                  },
                                  child: const Text(
                                    "Commencez maintenant --->",
                                    style: TextStyle(
                                        color: Color.fromRGBO(219, 159, 159, 1),
                                        fontFamily: 'Italianno',
                                        fontSize: 50.0,
                                        fontStyle: FontStyle.italic),
                                  ))),
                        ])),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.3),
                  ],
                ),
              ],
            ),
            const Footer1(),
          ],
        ),
      ),
    );
  }
}
