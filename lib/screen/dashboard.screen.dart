import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Widget> _children = [
    const AboutMeSection(),
    const ServiceSection(),
    const Column(),
    const Column(),
    const Column(),
    const Column(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 251, 251, 251),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                minWidth: constraints.maxWidth,
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      const HeaderBox(),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: DashboardSideMenu(
                                  callback: (index) {
                                    setState(() {
                                      this.index = index;
                                    });
                                  },
                                )),
                            Expanded(flex: 7, child: _children.elementAt(index))
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.2 - 30,
                    left: MediaQuery.of(context).size.width * 0.1 - 30,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/DRK_4589.JPG"),
                      radius: 30,
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}

class DashboardSideMenu extends StatefulWidget {
  const DashboardSideMenu({super.key, required this.callback});

  final void Function(int) callback;
  @override
  State<DashboardSideMenu> createState() => _DashboardSideMenuState();
}

class _DashboardSideMenuState extends State<DashboardSideMenu> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<ListTileItem> widgets = <ListTileItem>[
      const ListTileItem(
        title: 'A propos de moi',
        selectedIcon: Icons.person,
        unselectedIcon: Icons.person_outline,
      ),
      const ListTileItem(
        title: 'Services',
        selectedIcon: Icons.miscellaneous_services,
        unselectedIcon: Icons.miscellaneous_services_outlined,
      ),
      const ListTileItem(
        title: 'offres',
        selectedIcon: Icons.local_offer,
        unselectedIcon: Icons.local_offer_outlined,
      ),
      const ListTileItem(
        title: 'Notfications',
        selectedIcon: Icons.notifications,
        unselectedIcon: Icons.notifications_none_outlined,
      ),
      const ListTileItem(
        title: "Verifications",
        selectedIcon: Icons.verified,
        unselectedIcon: Icons.verified_outlined,
      ),
      const ListTileItem(
        title: "Portefeuille",
        selectedIcon: Icons.account_balance_wallet,
        unselectedIcon: Icons.account_balance_wallet_outlined,
      )
    ];

    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.2,
        child: DecoratedBox(
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      selected: index == _selectedIndex,
                      title: Text(widgets.elementAt(index).title),
                      leading: index == _selectedIndex
                          ? Icon(widgets.elementAt(index).selectedIcon)
                          : Icon(widgets.elementAt(index).unselectedIcon),
                      titleTextStyle: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: index == _selectedIndex
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                      iconColor: Colors.black,
                      selectedColor: Colors.black,
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                          widget.callback(index);
                        });
                      },
                    ),
                  );
                },
                itemCount: widgets.length,
              ),
            )));
  }
}

class HeaderBox extends StatelessWidget {
  const HeaderBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: Colors.black12,
              width: 1,
            ),
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profession",
                            style:
                                GoogleFonts.inter(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              style: IconButton.styleFrom(elevation: 3),
                              onPressed: () {},
                              icon: const Icon(Icons.edit))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Developeur d'application mobile",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Enseignant a l'universite de Yaounde I",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Education",
                            style:
                                GoogleFonts.inter(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              style: IconButton.styleFrom(elevation: 3),
                              onPressed: () {},
                              icon: const Icon(Icons.edit))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Diplome d'ingenieur",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "Ecole Nationale Superieure Polytechnique de Yaounde",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Diplome d'ingenieur",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "Ecole Nationale Superieure Polytechnique de Yaounde",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/DRK_4589.JPG"),
                              ),
                              Text(
                                "Conception de logiciels",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          IconButton(
                              style: IconButton.styleFrom(elevation: 3),
                              onPressed: () {},
                              icon: const Icon(Icons.edit))
                        ],
                      ),
                      const Text(
                          "Overview. Software design is the process of envisioning and defining software solutions to one or more sets of problems. One of the main components of software design is the soft... "),
                      Image.asset(
                        "images/service.png",
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.4,
                        fit: BoxFit.fitWidth,
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.thumb_up_alt_outlined,
                                ),
                                Text("200")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.thumb_down_alt_outlined,
                                    ),
                                    Text("200")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Icon(Icons.comment_sharp),
                                Text("200"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ]),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ListTileItem {
  const ListTileItem({
    required this.title,
    required this.selectedIcon,
    required this.unselectedIcon,
  });

  final String title;
  final IconData selectedIcon;
  final IconData unselectedIcon;
}
