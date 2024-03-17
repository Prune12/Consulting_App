import 'package:consulting_app/routes/app.routes.dart';
import 'package:consulting_app/widgets/TextFormField.widget.dart';
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:flutter/material.dart';

class PayementOrangeMtnFormPage extends StatefulWidget {
  const PayementOrangeMtnFormPage({super.key});

  @override
  State<PayementOrangeMtnFormPage> createState() => _PayementOrangeMtnFormPageState();
}

class _PayementOrangeMtnFormPageState extends State<PayementOrangeMtnFormPage> {
  String? _selectedSexe;
  final _isChecked = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Center(
                  child: Text("Selectionnner le mode de paiement",
                      style: TextStyle(
                          fontFamily: 'popping',
                          color: Color.fromRGBO(60, 56, 56, 1),
                          fontSize: 16)),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Mode de paiement",
                      style: TextStyle(
                          fontFamily: 'popping',
                          color: Color.fromRGBO(60, 56, 56, 1),
                          fontSize: 14)),
                ),
                const SizedBox(
                  height: 30,
                ),
                Wrap(
                  spacing: 30.0,
                  runSpacing: 10.0,
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, AppRoutes.payement);
                          },
                          child: Container(
                            width: 300,
                            height: 200,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/virementbank.jpeg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("BANK",
                            style: TextStyle(
                                fontFamily: 'popping',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(60, 56, 56, 1),
                                fontSize: 12))
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, AppRoutes.payementMtnOrange);

                          },
                          child: Container(
                            width: 300,
                            height: 200,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/orange.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("ORANGE",
                            style: TextStyle(
                                fontFamily: 'popping',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(60, 56, 56, 1),
                                fontSize: 12))
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, AppRoutes.payementMtnOrange);

                          },
                          child: Container(
                            width: 300,
                            height: 200,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/mtn.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("MTN",
                            style: TextStyle(
                                fontFamily: 'popping',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(60, 56, 56, 1),
                                fontSize: 12)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Form(
                    child: Column(
                  children: [
                     TextFormFieldPers2(
                        width: MediaQuery.of(context).size.width * 0.8,
                        heigth: MediaQuery.of(context).size.height * 0.15,
                        isPass: false,
                        keyboardType: TextInputType.number,
                        labeltext: "NOM",
                        hintext: "entrer votre nom",
                        putEye: false,
                        colorlabel: const Color.fromRGBO(60, 56, 56, 1)),
                        const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormFieldPers2(
                        width: MediaQuery.of(context).size.width * 0.8,
                        heigth: MediaQuery.of(context).size.height * 0.15,
                        isPass: false,
                        keyboardType: TextInputType.number,
                        labeltext: "NUMERO DE TELEPHONE",
                        hintext: "entrer le numero de telephone",
                        putEye: false,
                        colorlabel: const Color.fromRGBO(60, 56, 56, 1)),
                        const SizedBox(
                      height: 30,
                    ),
                    TextFormFieldPers2(
                        width: MediaQuery.of(context).size.width * 0.8,
                        heigth: MediaQuery.of(context).size.height * 0.15,
                        isPass: false,
                        keyboardType: TextInputType.number,
                        labeltext: "CODE DE SECURITE",
                        hintext: "entrer votre code de sécurité",
                        putEye: false,
                        colorlabel: const Color.fromRGBO(60, 56, 56, 1)),
                   
                 
                    const SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ValueListenableBuilder<bool>(
                          valueListenable: _isChecked,
                          builder: (context, isChecked, _) {
                            return Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                _isChecked.value = value!;
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.black
                            );
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Se souvenir des details de la carte",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'popping'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, AppRoutes.createposte);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(60, 56, 56, 1),
                        fixedSize: const Size(300, 70),
                        padding: const EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                      ),
                      child: const Text(
                        "payer 1600 FCFA",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'popping',
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
