//cette page contient le code source pour la page du TAF
import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/footer.widget.dart';
import 'package:consulting_app/widgets/imageAndtextAndmoneyContainer.widget.dart';
import 'package:consulting_app/widgets/textAndimageContainer.widget.dart';
import 'package:consulting_app/widgets/zoomOnContainer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActualityPage extends StatefulWidget {
  const ActualityPage({super.key});

  @override
  State<ActualityPage> createState() => _ActualityPageState();
}

class _ActualityPageState extends State<ActualityPage> {
  final PageController _controller = PageController();
  final PageController _mescontainerController = PageController();

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

//premier container 2e bloc
  List<Widget> mescontainer = [
    Container(
      width: 700,
      height: 2000,
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      margin: const EdgeInsets.only(top: 20.0, left: 100.0),
      decoration:
          const BoxDecoration(border: Border.fromBorderSide(BorderSide())),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                "NON CLASSE",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'popping', fontSize: 10),
              ),
            ),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "text",
              style: TextStyle(
                  fontFamily: 'popping',
                  fontSize: 16,
                  color: BUTTON_COLOR,
                  fontWeight: FontWeight.bold),
            )
          ]),
          const Padding(
            padding: EdgeInsets.all(1),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries, but also the leap into […]",
              style: TextStyle(
                  fontFamily: 'popping', fontSize: 10, color: BUTTON_COLOR),
            ),
          ),
          Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/consulting01.jpg'),
                  radius: 15,
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  "3M Digital",
                  style: TextStyle(
                      fontFamily: 'popping',
                      fontSize: 12,
                      color: BUTTON_COLOR,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "8 FÉVRIER 2024  AUCUN COMMENTAIRE   EN  SAVOIR PLUS",
                  style: TextStyle(
                      fontFamily: 'popping',
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  iconSize: 15,
                ),
              ]),
          Stack(children: [
            Container(
              height: 400,
              width: 700,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/image-22-1.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 7.0),
              child: Column(
                children: [
                  const Text(
                    "26\nJuin",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 5,
                    width: 13.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                "TIPS & TRICKS",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'popping', fontSize: 10),
              ),
            ),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "Tips for designing a logo that works for your business",
              style: TextStyle(
                  fontFamily: 'popping',
                  fontSize: 16,
                  color: BUTTON_COLOR,
                  fontWeight: FontWeight.bold),
            )
          ]),
          const Padding(
            padding: EdgeInsets.all(1),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into […]",
              style: TextStyle(
                  fontFamily: 'popping', fontSize: 10, color: BUTTON_COLOR),
            ),
          ),
          Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/consulting01.jpg'),
                  radius: 15,
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  "3M Digital",
                  style: TextStyle(
                      fontFamily: 'popping',
                      fontSize: 12,
                      color: BUTTON_COLOR,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "8 FÉVRIER 2024  AUCUN COMMENTAIRE   EN  SAVOIR PLUS",
                  style: TextStyle(
                      fontFamily: 'popping',
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  iconSize: 15,
                ),
              ]),
          Stack(children: [
            Container(
              height: 400,
              width: 700,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/image-23-1.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 10.0),
              child: Column(
                children: [
                  const Text(
                    "26\nJuin",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 5,
                    width: 13.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                "COMMUNITY",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'popping', fontSize: 10),
              ),
            ),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "Tips for designing a logo that works for your business",
              style: TextStyle(
                  fontFamily: 'popping',
                  fontSize: 16,
                  color: BUTTON_COLOR,
                  fontWeight: FontWeight.bold),
            )
          ]),
          const Padding(
            padding: EdgeInsets.all(1),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into […]",
              style: TextStyle(
                  fontFamily: 'popping', fontSize: 10, color: BUTTON_COLOR),
            ),
          ),
          Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/consulting01.jpg'),
                  radius: 15,
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  "3M Digital",
                  style: TextStyle(
                      fontFamily: 'popping',
                      fontSize: 12,
                      color: BUTTON_COLOR,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "8 FÉVRIER 2024  AUCUN COMMENTAIRE   EN  SAVOIR PLUS",
                  style: TextStyle(
                      fontFamily: 'popping',
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  iconSize: 15,
                ),
              ]),
        ],
      ),
    ),

Container(
      width: 400,
      height: 2000,
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
      margin: const EdgeInsets.only(top: 20.0, right: 40.0),
      decoration:
          const BoxDecoration(border: Border.fromBorderSide(BorderSide())),
      child: Column(children: [
        Container(
          height: 50,
          width: 400,
          decoration: BoxDecoration(
            border: const Border.fromBorderSide(BorderSide(color: Colors.grey)),
            borderRadius: BorderRadius.circular(8),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 30,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 90,
            ),
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.text,
                //maxLength: 20,
                decoration: InputDecoration(
                    fillColor: Colors.blue,
                    hintText: "Rechercher",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle:
                        const TextStyle(fontSize: 15, color: Colors.grey),
                    hintTextDirection: TextDirection.ltr),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 100,
        ),
        const Center(
          child: Text(
            "Categories",
            style: TextStyle(
                color: BUTTON_COLOR, fontFamily: 'popping', fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: BUTTON_COLOR,
                    size: 15,
                  ),
                  Text(
                    "Comments",
                    style: TextStyle(
                        color: BUTTON_COLOR,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                ],
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: BUTTON_COLOR,
                    size: 15,
                  ),
                  Text(
                    "Comments",
                    style: TextStyle(
                        color: BUTTON_COLOR,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                ],
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: BUTTON_COLOR,
                    size: 15,
                  ),
                  Text(
                    "Comments",
                    style: TextStyle(
                        color: BUTTON_COLOR,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                ],
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: BUTTON_COLOR,
                    size: 15,
                  ),
                  Text(
                    "Comments",
                    style: TextStyle(
                        color: BUTTON_COLOR,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                ],
              )),
        ),
        const SizedBox(
          height: 100,
        ),
        const Center(
          child: Text(
            "Comments",
            style: TextStyle(
                color: BUTTON_COLOR, fontFamily: 'popping', fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mode_comment,
                  color: Colors.grey,
                  size: 25,
                )),
            const SizedBox(width: 12),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Cecils pef dans tips  ',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                  TextSpan(
                      text: 'for designing logo that \nwork to your business',
                      style: const TextStyle(
                          color: Colors.blue,
                          fontFamily: 'popping',
                          fontSize: 13),
                      recognizer: TapGestureRecognizer()..onTap = () {}),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mode_comment,
                  color: Colors.grey,
                  size: 25,
                )),
            const SizedBox(width: 10),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Cecils pef dans tips  ',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                  TextSpan(
                      text: 'for designing logo that \nwork to your business',
                      style: const TextStyle(
                          color: Colors.blue,
                          fontFamily: 'popping',
                          fontSize: 13),
                      recognizer: TapGestureRecognizer()..onTap = () {}),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mode_comment,
                  color: Colors.grey,
                  size: 25,
                )),
            const SizedBox(width: 10),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Cecils pef dans tips  ',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                  TextSpan(
                      text: 'for designing logo that \nwork to your business',
                      style: const TextStyle(
                          color: Colors.blue,
                          fontFamily: 'popping',
                          fontSize: 13),
                      recognizer: TapGestureRecognizer()..onTap = () {}),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        ),
        const Center(
          child: Text(
            "Tags",
            style: TextStyle(
                color: BUTTON_COLOR, fontFamily: 'popping', fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 1),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              // Calculez la largeur de chaque widget TextAndContainerWidget en divisant la largeur totale par le nombre de widgets par ligne
              double width = constraints.maxWidth /
                  4; // Changez ce nombre pour contrôler combien de widgets par ligne

              // Créez une liste de vos widgets TextAndContainerWidget avec la largeur calculée.
              List<ZoomOnHover> mesWidgets = [
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('BRANDING',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('DESIGN',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('FREELANCE',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('IDENTITY',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('ILLUSTRATION',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('LINKS',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('LOGO',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('ROUTINES',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('TIPS',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('TYPOGRAPHY',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('WORK',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
              ];

              // Utilisez le widget Wrap pour afficher vos widgets.
              return Wrap(
                //direction: Axis.vertical,
                spacing: 10,
                runSpacing: 20,
                children: mesWidgets,
              );
            },
          ),
        ),
      ]),
    ),















//premier container 1e bloc
//deuxieme container 2e bloc
    Container(
      width: 700,
      height: 2000,
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      margin: const EdgeInsets.only(top: 20.0, left: 100.0),
      decoration:
          const BoxDecoration(border: Border.fromBorderSide(BorderSide())),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                "NON CLASSE",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'popping', fontSize: 10),
              ),
            ),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "text",
              style: TextStyle(
                  fontFamily: 'popping',
                  fontSize: 16,
                  color: BUTTON_COLOR,
                  fontWeight: FontWeight.bold),
            )
          ]),
          const Padding(
            padding: EdgeInsets.all(1),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries, but also the leap into […]",
              style: TextStyle(
                  fontFamily: 'popping', fontSize: 10, color: BUTTON_COLOR),
            ),
          ),
          Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/consulting01.jpg'),
                  radius: 15,
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  "3M Digital",
                  style: TextStyle(
                      fontFamily: 'popping',
                      fontSize: 12,
                      color: BUTTON_COLOR,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "8 FÉVRIER 2024  AUCUN COMMENTAIRE   EN  SAVOIR PLUS",
                  style: TextStyle(
                      fontFamily: 'popping',
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  iconSize: 15,
                ),
              ]),
          Stack(children: [
            Container(
              height: 400,
              width: 700,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/image-22-1.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 7.0),
              child: Column(
                children: [
                  const Text(
                    "26\nJuin",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 5,
                    width: 13.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                "TIPS & TRICKS",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'popping', fontSize: 10),
              ),
            ),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "Tips for designing a logo that works for your business",
              style: TextStyle(
                  fontFamily: 'popping',
                  fontSize: 16,
                  color: BUTTON_COLOR,
                  fontWeight: FontWeight.bold),
            )
          ]),
          const Padding(
            padding: EdgeInsets.all(1),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into […]",
              style: TextStyle(
                  fontFamily: 'popping', fontSize: 10, color: BUTTON_COLOR),
            ),
          ),
          Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/consulting01.jpg'),
                  radius: 15,
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  "3M Digital",
                  style: TextStyle(
                      fontFamily: 'popping',
                      fontSize: 12,
                      color: BUTTON_COLOR,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "8 FÉVRIER 2024  AUCUN COMMENTAIRE   EN  SAVOIR PLUS",
                  style: TextStyle(
                      fontFamily: 'popping',
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  iconSize: 15,
                ),
              ]),
          Stack(children: [
            Container(
              height: 400,
              width: 700,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/image-23-1.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 10.0),
              child: Column(
                children: [
                  const Text(
                    "26\nJuin",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 5,
                    width: 13.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                "COMMUNITY",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'popping', fontSize: 10),
              ),
            ),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "Tips for designing a logo that works for your business",
              style: TextStyle(
                  fontFamily: 'popping',
                  fontSize: 16,
                  color: BUTTON_COLOR,
                  fontWeight: FontWeight.bold),
            )
          ]),
          const Padding(
            padding: EdgeInsets.all(1),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into […]",
              style: TextStyle(
                  fontFamily: 'popping', fontSize: 10, color: BUTTON_COLOR),
            ),
          ),
          Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/consulting01.jpg'),
                  radius: 15,
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  "3M Digital",
                  style: TextStyle(
                      fontFamily: 'popping',
                      fontSize: 12,
                      color: BUTTON_COLOR,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "8 FÉVRIER 2024  AUCUN COMMENTAIRE   EN  SAVOIR PLUS",
                  style: TextStyle(
                      fontFamily: 'popping',
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  iconSize: 15,
                ),
              ]),
        ],
      ),
    ),

    

//deuxieme container du premier bloc
    Container(
      width: 400,
      height: 2000,
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
      margin: const EdgeInsets.only(top: 20.0, right: 40.0),
      decoration:
          const BoxDecoration(border: Border.fromBorderSide(BorderSide())),
      child: Column(children: [
        Container(
          height: 50,
          width: 400,
          decoration: BoxDecoration(
            border: const Border.fromBorderSide(BorderSide(color: Colors.grey)),
            borderRadius: BorderRadius.circular(8),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 30,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 90,
            ),
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.text,
                //maxLength: 20,
                decoration: InputDecoration(
                    fillColor: Colors.blue,
                    hintText: "Rechercher",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle:
                        const TextStyle(fontSize: 15, color: Colors.grey),
                    hintTextDirection: TextDirection.ltr),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 100,
        ),
        const Center(
          child: Text(
            "Categories",
            style: TextStyle(
                color: BUTTON_COLOR, fontFamily: 'popping', fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: BUTTON_COLOR,
                    size: 15,
                  ),
                  Text(
                    "Comments",
                    style: TextStyle(
                        color: BUTTON_COLOR,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                ],
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: BUTTON_COLOR,
                    size: 15,
                  ),
                  Text(
                    "Comments",
                    style: TextStyle(
                        color: BUTTON_COLOR,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                ],
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: BUTTON_COLOR,
                    size: 15,
                  ),
                  Text(
                    "Comments",
                    style: TextStyle(
                        color: BUTTON_COLOR,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                ],
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: BUTTON_COLOR,
                    size: 15,
                  ),
                  Text(
                    "Comments",
                    style: TextStyle(
                        color: BUTTON_COLOR,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                ],
              )),
        ),
        const SizedBox(
          height: 100,
        ),
        const Center(
          child: Text(
            "Comments",
            style: TextStyle(
                color: BUTTON_COLOR, fontFamily: 'popping', fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mode_comment,
                  color: Colors.grey,
                  size: 25,
                )),
            const SizedBox(width: 12),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Cecils pef dans tips  ',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                  TextSpan(
                      text: 'for designing logo that \nwork to your business',
                      style: const TextStyle(
                          color: Colors.blue,
                          fontFamily: 'popping',
                          fontSize: 13),
                      recognizer: TapGestureRecognizer()..onTap = () {}),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mode_comment,
                  color: Colors.grey,
                  size: 25,
                )),
            const SizedBox(width: 10),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Cecils pef dans tips  ',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                  TextSpan(
                      text: 'for designing logo that \nwork to your business',
                      style: const TextStyle(
                          color: Colors.blue,
                          fontFamily: 'popping',
                          fontSize: 13),
                      recognizer: TapGestureRecognizer()..onTap = () {}),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mode_comment,
                  color: Colors.grey,
                  size: 25,
                )),
            const SizedBox(width: 10),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Cecils pef dans tips  ',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'popping',
                        fontSize: 13),
                  ),
                  TextSpan(
                      text: 'for designing logo that \nwork to your business',
                      style: const TextStyle(
                          color: Colors.blue,
                          fontFamily: 'popping',
                          fontSize: 13),
                      recognizer: TapGestureRecognizer()..onTap = () {}),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        ),
        const Center(
          child: Text(
            "Tags",
            style: TextStyle(
                color: BUTTON_COLOR, fontFamily: 'popping', fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 1),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              // Calculez la largeur de chaque widget TextAndContainerWidget en divisant la largeur totale par le nombre de widgets par ligne
              double width = constraints.maxWidth /
                  4; // Changez ce nombre pour contrôler combien de widgets par ligne

              // Créez une liste de vos widgets TextAndContainerWidget avec la largeur calculée.
              List<ZoomOnHover> mesWidgets = [
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('BRANDING',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('DESIGN',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('FREELANCE',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('IDENTITY',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('ILLUSTRATION',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('LINKS',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('LOGO',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('ROUTINES',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('TIPS',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('TYPOGRAPHY',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
                ZoomOnHover(
                  child: TextAndContainerButton2(
                    width: width,
                    height: 50,
                    text1: const Text('WORK',
                        style: TextStyle(color: Colors.white, fontSize: 8.5)),
                  ),
                ),
              ];

              // Utilisez le widget Wrap pour afficher vos widgets.
              return Wrap(
                //direction: Axis.vertical,
                spacing: 10,
                runSpacing: 20,
                children: mesWidgets,
              );
            },
          ),
        ),
      ]),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Wrap(
            //spacing: 50,
            //alignment: WrapAlignment.spaceAround,
            direction: Axis.vertical,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: BUTTON_COLOR,
              ),
              const SizedBox(
                height: 20,
              ),
              // Row(
              //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [

              //     const SizedBox(
              //       width: 40,
              //     ),
              //     //deuxieme container

              //   ],
              // ),
              Column(
                children: <Widget>[
                  Container(
                    height: 2000.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      controller: _mescontainerController,
                      scrollDirection: Axis.horizontal,
                      itemCount: mescontainer.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 12.0,
                      ),
                      itemBuilder: (context, index) {
                        return mescontainer[index];
                      },
                    ),
                  ),
                  const SizedBox(
                      height: 60,
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top:
                        1980, // Ajustez cette valeur en fonction de vos besoins
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: const Icon(Icons.keyboard_arrow_left_sharp,
                                  color: Colors.grey),
                              onPressed: () {
                                _mescontainerController.previousPage(
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
                                _mescontainerController.nextPage(
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

              const SizedBox(
                height: 200,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.25),
                child: const Text("Annonces 3MC Digital",
                    style: TextStyle(
                        color: BUTTON_COLOR,
                        fontFamily: 'popping',
                        fontSize: 50)),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Container(
                    width: 400,
                    height: 2000,
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 40.0),
                    margin: const EdgeInsets.only(top: 20.0, left: 100.0),
                    decoration: const BoxDecoration(
                      border: Border.fromBorderSide(BorderSide()),
                      color: Colors.white,
                    ),
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.security,
                                  color: Colors.green,
                                  size: 12,
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                const Text(
                                  "VERIFIER",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 12.0),
                                ),
                                const SizedBox(
                                  width: 210.0,
                                ),
                                Image.asset(
                                  'assets/images/verifier.png',
                                  width: 60.0,
                                  height: 60.0,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                left: 20.0, top: 30.0, right: 30.0),
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/consulting01.jpg'),
                              radius: 100.0,
                            ),
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          const Center(
                            child: Text(
                              '3M DIGITAL',
                              style: TextStyle(
                                  fontFamily: 'popping', fontSize: 35),
                            ),
                          ),
                          const SizedBox(
                            height: 80.0,
                          ),
                          Center(
                              child: Container(
                            // padding: const EdgeInsets.only(left: 80.0),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.place,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Text(
                                  'Yaoundé',
                                  style: TextStyle(
                                    fontFamily: 'popping',
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          )),
                          const SizedBox(
                            height: 60.0,
                          ),
                          Center(
                              child: Container(
                            // padding: const EdgeInsets.only(left: 80.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.telegram,
                                    color: Colors.blue,
                                  ),
                                  iconSize: 80,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  width: 65,
                                  height: 65,
                                  padding: const EdgeInsets.only(
                                      right: 5, top: 5, bottom: 7),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    color: Colors.green,
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const FaIcon(FontAwesomeIcons.whatsapp,
                                        size: 60, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )),
                          const SizedBox(
                            height: 50.0,
                          ),
                          const Center(
                            child: Text(
                              'MEMBRE DEPUIS LE 30 MAI 2020',
                              style: TextStyle(
                                  fontFamily: 'popping',
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            height: 80.0,
                          ),
                          Center(
                              // padding: const EdgeInsets.only(top: 50.0, right: 120.0),
                              child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: BUTTON_COLOR,
                                fixedSize: const Size(220, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            child: const Text("Envoyer un message",
                                style: TextStyle(
                                    fontFamily: 'popping',
                                    fontSize: 14,
                                    color: Colors.white)),
                          )),
                          const SizedBox(
                            height: 25.0,
                          ),
                          Center(
                              // padding: const EdgeInsets.only(top: 50.0, right: 120.0),
                              child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 202, 200, 200),
                                fixedSize: const Size(220, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            child: const Text("Envoyer un message",
                                style: TextStyle(
                                    fontFamily: 'popping',
                                    fontSize: 14,
                                    color: Colors.black)),
                          )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  //deuxieme container pour les annonces

                  // Container(
                  //   width: 800,
                  //   height: 2000,
                  //   padding: const EdgeInsets.only(
                  //       left: 20.0, right: 20.0, top: 20.0),
                  //   margin: const EdgeInsets.only(top: 20.0, right: 10.0),
                  //   decoration: const BoxDecoration(
                  //     border: Border.fromBorderSide(BorderSide()),
                  //   ),
                  //   child: CustomScrollView(
                  //     // scrollDirection: Axis.horizontal,
                  //     slivers: [
                  //       SliverPadding(
                  //         padding: const EdgeInsets.only(top: 20.0),
                  //         sliver: SliverGrid(
                  //           gridDelegate:
                  //               SliverGridDelegateWithFixedCrossAxisCount(
                  //             crossAxisCount: 2, // 2 éléments par ligne
                  //             childAspectRatio:
                  //                 1, // Aspect ratio pour contrôler la hauteur des éléments
                  //           ),
                  //           delegate: SliverChildBuilderDelegate(
                  //             (BuildContext context, int index) {
                  //               if (index >= mesWidgets.length) {
                  //                 return null;
                  //               }
                  //               return mesWidgets[index];
                  //             },
                  //             childCount: mesWidgets.length,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
              const Footer1(),
            ]),
      ),
    );
  }
}
