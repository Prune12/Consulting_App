//cette page permet de creer un widget reutilisable pour afficher la liste des consultants

import 'package:flutter/material.dart';

class ConsultingContainerWidget extends StatefulWidget {
  final Icon? securityicon;
  final Text? verifiertext;
  final AssetImage imageconsultant;
  final String? nomconsultant;
  final String? localisationtext;
  final String? date;
  final String? nameimage;
  final Icon? iconlocalisation;
  const ConsultingContainerWidget(
      {super.key,
      this.securityicon,
      this.verifiertext,
      this.date,
      this.localisationtext,
      required this.nomconsultant,
      required this.imageconsultant,
      this.nameimage,
      this.iconlocalisation});

  @override
  State<ConsultingContainerWidget> createState() =>
      _ConsultingContainerWidgetState();
}

class _ConsultingContainerWidgetState extends State<ConsultingContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300),
          child: Card(
            elevation: 5.0,
            borderOnForeground: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  10.0), // Ajustez la valeur pour changer le rayon de l'arrondi
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      widget.securityicon ??
                          const Icon(
                            Icons.security,
                            color: Colors.green,
                            size: 12,
                          ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      widget.verifiertext ??
                          const Text(
                            "VERIFIER",
                            style:
                                TextStyle(color: Colors.green, fontSize: 12.0),
                          ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Image.asset(
                        widget.nameimage ?? 'assets/images/personnal.png',
                        width: 5.0,
                        height: 5.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin:
                      const EdgeInsets.only(left: 20.0, top: 30.0, right: 30.0),
                  child: CircleAvatar(
                    backgroundImage: widget.imageconsultant,
                    radius: 50.0,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: Text(
                    widget.nomconsultant!,
                    style: const TextStyle(fontFamily: 'popping', fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Center(
                    child: Container(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    children: [
                      widget.iconlocalisation ??
                          const Icon(
                            Icons.place,
                            color: Colors.black,
                          ),
                      const SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        widget.localisationtext ?? 'Yaoundé',
                        style: const TextStyle(
                          fontFamily: 'popping',
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                )),
                const SizedBox(
                  height: 9.0,
                ),
                Center(
                  child: Text(
                    widget.date ?? 'MEMBRE DEPUIS LE 30 MAI 2020',
                    style: const TextStyle(
                        fontFamily: 'popping',
                        fontSize: 10,
                        color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Container(
                    padding: const EdgeInsets.only(top: 50.0, right: 120.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.messenger_rounded,
                          size: 20,
                          color: Colors.grey,
                        ))),
              ],
            ),
          ),
        ));
  }
}
