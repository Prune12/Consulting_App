//cette page contient le code source pour la page du TAF
import 'dart:async';

import 'package:consulting_app/routes/app.routes.dart';
import 'package:consulting_app/screen/dashboard.screen.dart';
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/footer.widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ConsultantPage extends StatefulWidget {
  const ConsultantPage({super.key});

  @override
  State<ConsultantPage> createState() => _ConsultantPageState();
}

class _ConsultantPageState extends State<ConsultantPage> {
  late ScrollController _scrollController;
  double _offset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScroll);
    getData();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    setState(() {
      _offset = _scrollController.offset;
    });
  }

  bool _enabled = true;
  getData() async {
    // fonction pour recuperer les donnees
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _enabled = !_enabled;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _enabled
        ? SingleChildScrollView(
            child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: const Center(
                    child: CircularProgressIndicator(
                  // semanticsLabel: "Loading...",
                  semanticsValue: "Loading...",
                  color: Colors.blue,
                ))),
          )
        : Scaffold(
            backgroundColor: const Color.fromARGB(255, 247, 251, 255),
            appBar: const MyAppBar(),
            body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) =>
                  SingleChildScrollView(
                      controller: _scrollController,
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(minHeight: constraints.maxHeight),
                        child: IntrinsicHeight(
                          child: Column(
                            children: [
                              const BlackBanner(),
                              Expanded(
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.65),
                                  child: Column(
                                    children: [
                                      const CustomSearchBar(),
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AsideView(
                                              offset: _offset,
                                              values: const [
                                                "Toutes les categories",
                                                "Administration publique / Public administration",
                                                "Administration publique / Public administration",
                                                "Developpement local / Local development",
                                                "Developpement local / Local development",
                                                "Conception logiciel / Software design",
                                                "Conception logiciel / Software design",
                                                "Conception logiciel / Software design",
                                                "Conception logiciel / Software design",
                                                "Conception logiciel / Software design",
                                                "Conception logiciel / Software design",
                                                "Conception logiciel / Software design",
                                                "Conception logiciel / Software design",
                                                "Conception logiciel / Software design",
                                                "Conception logiciel / Software design",
                                                "Developpement local / Local development",
                                                "Developpement local / Local development",
                                                "Developpement local / Local development",
                                                "Developpement local / Local development",
                                                "Developpement local / Local development",
                                                "Developpement local / Local development",
                                                "Developpement local / Local development",
                                                "Developpement local / Local development",
                                                "Developpement local / Local development",
                                                "Conception logiciel / Software design",
                                              ],
                                            ),
                                            const Expanded(
                                                child: ResultsView()),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const Footer1()
                            ],
                          ),
                        ),
                      )),
            ),
          );
  }
}

class BlackBanner extends StatelessWidget {
  const BlackBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
      ),
    );
  }
}

class AsideView extends StatefulWidget {
  const AsideView({super.key, required this.values, required this.offset});
  final List<String> values;
  final double offset;

  @override
  State<AsideView> createState() => _AsideViewState();
}

class _AsideViewState extends State<AsideView> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, widget.offset),
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ]),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.2,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(widget.values[index]),
                      leading: Radio<int>(
                        value: index,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    );
                  },
                  itemCount: widget.values.length,
                ),
              ),
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Align(
                        alignment: Alignment.bottomLeft, child: Text("BUDGET")),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Filtrer",
                        style: GoogleFonts.inter(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class ResultsView extends StatefulWidget {
  const ResultsView({super.key});

  @override
  State<ResultsView> createState() => _ResultsViewState();
}

class _ResultsViewState extends State<ResultsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Résultats de la recherche",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, AppRoutes.devenirconsult);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  shadowColor: const Color.fromARGB(255, 170, 166, 166)),
              child: const Text(
                "Devenir Consultant",
                style: TextStyle(
                    fontFamily: 'popping',
                    fontSize: 11,
                    color: Color.fromRGBO(252, 185, 0, 1)),
              ),
            ),
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.42,
              child: const Column(children: [
                ResultCard(),
                ResultCard(),
                ResultCard(),
                ResultCard(),
                ResultCard(),
                ResultCard(),
                ResultCard(),
                ResultCard(),
                ResultCard(),
                ResultCard(),
                ResultCard(),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  MaterialStateColor _getColor() {
    return MaterialStateColor.resolveWith((states) {
      if (states.any(MaterialState.values.contains)) {
        return Colors.white;
      }
      return Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.04,
      ),
      child: SearchBar(
        constraints: const BoxConstraints(minWidth: double.maxFinite),
        surfaceTintColor: _getColor(),
        backgroundColor: _getColor(),
        overlayColor: _getColor(),
        hintText: "mots cles",
        padding: MaterialStateProperty.resolveWith((states) {
          if (states.any(MaterialState.values.contains)) {
            return EdgeInsets.symmetric(
                horizontal: 10,
                vertical: MediaQuery.of(context).size.height * 0.015);
          }
          return EdgeInsets.symmetric(
              horizontal: 10,
              vertical: MediaQuery.of(context).size.height * 0.015);
        }),
        shape: MaterialStateProperty.resolveWith((states) {
          if (states.any(MaterialState.values.contains)) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            );
          }
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          );
        }),
        trailing: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Rechercher",
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.inter(
                      color: Colors.white,
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios, color: Colors.white),
                ],
              )),
        ],
      ),
    );
  }
}

class ResultCard extends StatefulWidget {
  const ResultCard({super.key});

  @override
  State<ResultCard> createState() => _ResultCardState();
}

class _ResultCardState extends State<ResultCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return const DashboardScreen();
        }));
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            _isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            _isHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(microseconds: 200),
          curve: Curves.easeInOut,
          transform:
              Matrix4.translationValues(0.0, _isHovered ? -20 : 0.0, 0.0),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/boss.jpg",
                        ),
                      ),
                      TextButton(
                        child: Text(
                          "Francis Kenfack",
                          style: GoogleFonts.inter(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                      const Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text("Yaounde")
                        ],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const Expanded(
                          child: Text(
                        "23 janvier 2021",
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text.rich(
                      TextSpan(
                        text: "Decorateurs doigts de fees - ",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        children: [
                          TextSpan(
                            text: "Arts et decorations",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Divider(),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Commentaires",
                          style: TextStyle(
                              color: Color.fromARGB(255, 3, 6, 29),
                              fontFamily: 'popping',
                              fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Commenter",
                          style: TextStyle(
                              color: Color.fromARGB(255, 3, 6, 29),
                              fontFamily: 'popping',
                              fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        width: 300,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const FaIcon(FontAwesomeIcons.whatsapp,
                            color: Colors.green),
                      ),
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
