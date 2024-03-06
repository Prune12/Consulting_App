//page contenant le formulaire d'inscription pour devenir consultant
import 'dart:io';
import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/TextFormField.widget.dart';
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/footer.widget.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';

class DevenirConsultantPage extends StatefulWidget {
  const DevenirConsultantPage({super.key});

  @override
  State<DevenirConsultantPage> createState() => _DevenirConsultantPageState();
}

class _DevenirConsultantPageState extends State<DevenirConsultantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Wrap(children: [
            Stack(
              children: [
                Column(children: [
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
                          Text("Devenir consultant",
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
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.12),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("CV",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
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
                          final result = await FilePicker.platform.pickFiles();
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
                        child: const Text("choisir un fichier",
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
                    height: 40,
                  ),
                  TextFormFieldPers2(
                    isPass: false,
                    keyboardType: TextInputType.text,
                    labeltext: "LOCALISATION",
                    hintext:
                        "    ICI IL FAUDRA UNE CARTE GOOGLE PERMETTANT À L'UTILISATEUR DE CHOISIR SA \n LOCALISATION",
                    isfilled: false,
                    putEye: false,
                    colorlabel: Colors.black,
                    radiusforfield: BorderRadius.circular(5),
                    width: MediaQuery.of(context).size.width * 0.8,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.03),
                    paddingforfield: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.12),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormFieldPers2(
                    isPass: false,
                    keyboardType: TextInputType.number,
                    labeltext: "ANNE D'EXPERIENCE",
                    hintext: "    entrer votre année d'experience",
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
                    height: 40,
                  ),
                  TextFormFieldPers2(
                    isPass: false,
                    keyboardType: TextInputType.number,
                    labeltext: "ID D'IDENTIFICATION BANCAIRE",
                    hintext: "    entrer l'id",
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
                    height: 40,
                  ),
                  TextFormFieldPers2(
                    isPass: false,
                    keyboardType: TextInputType.text,
                    labeltext: "NUMERO DE CNI",
                    hintext: "    entrer le numero de cni",
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
                    height: 40,
                  ),
                  TextFormFieldPers2(
                    isPass: false,
                    keyboardType: TextInputType.text,
                    labeltext: "ID D'IDENTIFICATION BANCAIRE",
                    hintext: " ",
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
                    height: 40,
                  ),
                  TextFormFieldPers2(
                    isPass: false,
                    keyboardType: TextInputType.text,
                    labeltext: "DOSSIER FISCALE",
                    hintext: "  ",
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
                    height: 60,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: Row(
                        children: [
                          ElevatedButton(
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
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(42, 114, 221, 1),
                                fixedSize: const Size(200, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                            child: const Text("Telecharger le contrat",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'popping',
                                )),
                          ),
                           const SizedBox(
                    width: 640,
                  ),

                          Text("uploader le contrat",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontFamily: 'popping',
                                )),
                                const SizedBox(
                    width: 5,
                  ),
                          ElevatedButton(
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
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 197, 196, 196),
                                fixedSize: const Size(180, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                )),
                            child: const Text("choisir les images",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'popping',
                                )),
                          ),
                        ],
                      )),
const SizedBox(
                        height: 150,
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
                            child: const Text("ENVOYER",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'popping',
                                )),
                          )),
                      const SizedBox(
                        height: 400,
                      ),




                ])
              ],
            ),
            const Footer1(),
          ]),
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
