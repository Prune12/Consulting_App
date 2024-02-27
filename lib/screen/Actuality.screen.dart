//cette page contient le code source pour la page du TAF
import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/footer.widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ActualityPage extends StatefulWidget {
  const ActualityPage({super.key});

  @override
  State<ActualityPage> createState() => _ActualityPageState();
}

class _ActualityPageState extends State<ActualityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Wrap(
            //spacing: 50,
            alignment: WrapAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: BUTTON_COLOR,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 600,
                    height: 2000,
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0),
                    margin: const EdgeInsets.only(top: 20.0, left: 20.0),
                    decoration: const BoxDecoration(
                        border: Border.fromBorderSide(BorderSide())),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
                                      color: Colors.white,
                                      fontFamily: 'popping',
                                      fontSize: 10),
                                ),
                              ),
                            ]),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industry’s standard dummy\n text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries, but also the leap into […]",
                            style: TextStyle(
                                fontFamily: 'popping',
                                fontSize: 10,
                                color: BUTTON_COLOR),
                          ),
                        ),
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/consulting01.jpg'),
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
                                icon:
                                    const Icon(Icons.arrow_forward_ios_rounded),
                                iconSize: 15,
                              ),
                            ]),
                        Stack(children: [
                          Container(
                            height: 400,
                            width: 600,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/image-22-1.jpg',
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
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
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
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
                                      color: Colors.white,
                                      fontFamily: 'popping',
                                      fontSize: 10),
                                ),
                              ),
                            ]),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industry’s standard dummy\n text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries, but also the leap into […]",
                            style: TextStyle(
                                fontFamily: 'popping',
                                fontSize: 10,
                                color: BUTTON_COLOR),
                          ),
                        ),
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/consulting01.jpg'),
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
                                icon:
                                    const Icon(Icons.arrow_forward_ios_rounded),
                                iconSize: 15,
                              ),
                            ]),
                        Stack(children: [
                          Container(
                            height: 400,
                            width: 600,
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
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
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
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
                                      color: Colors.white,
                                      fontFamily: 'popping',
                                      fontSize: 10),
                                ),
                              ),
                            ]),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industry’s standard dummy\n text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries, but also the leap into […]",
                            style: TextStyle(
                                fontFamily: 'popping',
                                fontSize: 10,
                                color: BUTTON_COLOR),
                          ),
                        ),
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/consulting01.jpg'),
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
                                icon:
                                    const Icon(Icons.arrow_forward_ios_rounded),
                                iconSize: 15,
                              ),
                            ]),
                      ],
                    ),
                  ),
                  //deuxieme container
                  Container(
                    width: 600,
                    height: 2000,
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 40.0),
                    margin: const EdgeInsets.only(top: 20.0, right: 20.0),
                    decoration: const BoxDecoration(
                        border: Border.fromBorderSide(BorderSide())),
                    child: Column(children: [
                      Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          border: const Border.fromBorderSide(
                              BorderSide(color: Colors.grey)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                                    hintStyle: const TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: Text(
                          "Categories",
                          style: TextStyle(
                              color: BUTTON_COLOR,
                              fontFamily: 'popping',
                              fontSize: 25),
                        ),
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
                        height: 13,
                      ),
                      const Center(
                        child: Text(
                          "Comments",
                          style: TextStyle(
                              color: BUTTON_COLOR,
                              fontFamily: 'popping',
                              fontSize: 25),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
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
                                    text:
                                        'for designing logo that \nwork to your business',
                                    style: const TextStyle(
                                        color: Colors.blue,
                                        fontFamily: 'popping',
                                        fontSize: 13),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
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
                                    text:
                                        'for designing logo that \nwork to your business',
                                    style: const TextStyle(
                                        color: Colors.blue,
                                        fontFamily: 'popping',
                                        fontSize: 13),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
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
                                    text:
                                        'for designing logo that \nwork to your business',
                                    style: const TextStyle(
                                        color: Colors.blue,
                                        fontFamily: 'popping',
                                        fontSize: 13),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      const Center(
                        child: Text(
                          "Tags",
                          style: TextStyle(
                              color: BUTTON_COLOR,
                              fontFamily: 'popping',
                              fontSize: 25),
                        ),
                      ),

                    ]),
                  )
                ],
              )
            ]),
      ),
      bottomNavigationBar: const Footer1(),
    );
  }
}
