//page contient le formulaire à remplir pour creer un poste
import 'dart:async';
import 'dart:io';

import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/TextFormField.widget.dart';
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/footer.widget.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  String? _selectedSexe;
  bool _enabled = true;
getData() async {
 // fonction pour recuperer les donnees
 Timer(const Duration(seconds: 3), () {
      setState(() {
    _enabled = ! _enabled;
      });
    });
}
@override
void initState() {
    // TODO: implement initState
    super.initState();
    getData();
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
                  semanticsValue:"Loading...",
                  color: Colors.blue,
                ))),
          )
        :Scaffold(
        appBar: const MyAppBar(),
        body: SingleChildScrollView(
          child: Wrap(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        color: BUTTON_COLOR,
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Nouveau poste",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontFamily: 'popping',
                                  )),
                            ]),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      DropdownFormFieldPers1(
                        width: MediaQuery.of(context).size.width * 0.8,
                        heigth: MediaQuery.of(context).size.height * 0.15,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        items: const [
                          'Marketing',
                          'Informatique',
                          'Travaux publiques'
                        ],
                        hintext: "Categories",
                        labeltext: "CATEGORIE",
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedSexe = newValue;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormFieldPers2(
                        isPass: false,
                        keyboardType: TextInputType.text,
                        labeltext: "DESCRIPTION",
                        hintext: "    entrer la description",
                        isfilled: false,
                        putEye: false,
                        colorlabel: Colors.black,
                        radiusforfield: BorderRadius.circular(5),
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        paddingforfield: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.12),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.12),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("IMAGES(Facultatifs)",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: 'popping',
                                  )),
                            ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.65),
                          child: ElevatedButton(
                            onPressed: () async {
                              final result =
                                  await FilePicker.platform.pickFiles();
                              if (result != null) {
                                final fileBytes = result.files.single.bytes;
                                if (fileBytes != null) {
                                  final fileName = result.files.single.name;
                                  await saveFileLocally(fileBytes, fileName);
                                } else {
                                  print('Erreur : Aucun fichier sélectionné.');
                                }
                              }
                            },
                            child: const Text("choisir les images",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'popping',
                                )),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 197, 196, 196),
                                fixedSize: const Size(150, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormFieldPers2(
                        isPass: false,
                        keyboardType: TextInputType.text,
                        labeltext: "TITRE",
                        hintext: "    entrer le titre",
                        isfilled: false,
                        putEye: false,
                        colorlabel: Colors.black,
                        radiusforfield: BorderRadius.circular(5),
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        paddingforfield: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.038,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormFieldPers2(
                        isPass: false,
                        keyboardType: TextInputType.number,
                        labeltext: "BUDGET",
                        hintext: "    entrer le budget",
                        isfilled: false,
                        putEye: false,
                        colorlabel: Colors.black,
                        radiusforfield: BorderRadius.circular(5),
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        paddingforfield: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.038,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      DropdownFormFieldPers1(
                        width: MediaQuery.of(context).size.width * 0.8,
                        heigth: MediaQuery.of(context).size.height * 0.15,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        items: const ['Douala', 'Yaoundé', 'garoua'],
                        hintext: "localisation",
                        labeltext: "LOCALISATION(Facultatifs)",
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedSexe = newValue;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      DropdownFormFieldPers1(
                        width: MediaQuery.of(context).size.width * 0.8,
                        heigth: MediaQuery.of(context).size.height * 0.15,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        items: const ['Jours', 'mois', 'Annee'],
                        hintext: "duree",
                        labeltext: "DUREE",
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedSexe = newValue;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormFieldPers2(
                        isPass: false,
                        keyboardType: TextInputType.text,
                        labeltext: "COMPETENCES",
                        hintext: "    entrer vos compétences",
                        isfilled: false,
                        putEye: false,
                        colorlabel: Colors.black,
                        radiusforfield: BorderRadius.circular(5),
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        paddingforfield: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.12),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormFieldPers2(
                        isPass: false,
                        keyboardType: TextInputType.number,
                        labeltext: "DELAI POUR POSTULER",
                        hintext: "    entrer le delai",
                        isfilled: false,
                        putEye: false,
                        colorlabel: Colors.black,
                        radiusforfield: BorderRadius.circular(5),
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        paddingforfield: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.038,
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.65),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: BUTTON_COLOR,
                                fixedSize: const Size(150, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            child: const Text("Publier",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'popping',
                                )),
                          )),
                      const SizedBox(
                        height: 200,
                      ),
                    ],
                  )
                ],
              ),
              const Footer1(),
            ],
          ),
        ));
  }
}

Future<String> getDownloadsDirectory() async {
  final directory = await getApplicationSupportDirectory();
  return '${directory.path}/downloads';
}

Future<void> saveFileLocally(List<int> fileBytes, String fileName) async {
  final downloadsDirectory = await getDownloadsDirectory();
  final filePath = '$downloadsDirectory/$fileName';

  final file = File(filePath);
  await file.writeAsBytes(fileBytes);
}
