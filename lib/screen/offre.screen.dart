//cette page contient le code source pour la page du TAF
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/footer.widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PublishOffer extends StatefulWidget {
  const PublishOffer({super.key});

  @override
  State<PublishOffer> createState() => _PublishOfferState();
}

class _PublishOfferState extends State<PublishOffer> {
  late ScrollController _scrollController;
  double _offset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScroll);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 251, 255),
      appBar: const MyAppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) =>
            SingleChildScrollView(
                controller: _scrollController,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        const BlackBanner(),
                        Expanded(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.65),
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
                                      const Expanded(child: ResultsView()),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Footer()
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
        const Text(
          "Résultats de la recherche",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
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
      onTap: () {},
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
                      CircleAvatar(
                        child: Image.network(
                          "data:image/jpeg;base64,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",
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
                      const Expanded(
                          child: Text(
                        "23 janvier 2021",
                        textAlign: TextAlign.end,
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
                  SizedBox(
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      "data:image/jpeg;base64,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",
                      alignment: Alignment.topLeft,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("200,000FCFA"),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.comment_outlined))
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
