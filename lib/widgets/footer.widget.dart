//cette page presente le footer de l'application

import 'package:consulting_app/utils/Themes.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: APPBAR_COLOR,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: SingleChildScrollView(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const SizedBox(width: 100.0),
            TextButton(
              onPressed: () {
                // Navigate to the privacy policy page in French
              },
              child: const Text(
                '© 2023 Copyright 3M Consulting SARL. All rights reserved.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17.0,
                  fontFamily: 'popping',
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            TextButton(
              onPressed: () {
                // Navigate to the privacy policy page in French
              },
              child: const Text(
                'Politique de confidentialité',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontFamily: 'popping',
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            TextButton(
              onPressed: () {
                // Navigate to the privacy policy page in English
              },
              child: const Text(
                'Privacy Policy',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontFamily: 'popping',
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            TextButton(
              onPressed: () {
                // Navigate to the privacy policy page in English
              },
              child: const Text(
                'Terms and Conditions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontFamily: 'popping',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//deuxieme footer
class Footer1 extends StatefulWidget {
  const Footer1({super.key});

  @override
  State<Footer1> createState() => _Footer1State();
}

class _Footer1State extends State<Footer1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      color: Color.fromRGBO(0, 0, 0, 0.86),
      width: MediaQuery.sizeOf(context).width,
      // padding: const EdgeInsets.only(
      //   left: 16.0,
      //   right: 16.0,
      // ),
      
        child: Column(children: [
        
        Wrap(
           alignment :WrapAlignment.spaceAround,
          //crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 200.0,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "A PROPOS DE NOUS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Politique de confidentialite",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Terms and Conditions",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "3M DIGITAL",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "A PROPOS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
              ],
            ),

             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "HORAIRES D'OUVERTURES",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Fermé Dimanche,Samedi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Ouvert de Lundi à Vendredi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Ouvert de 08H à 17H",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                
              ],
            ),


Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "LES PARTENAIRES",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "NGONDE Frank",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "NGONDE Frank",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "NGONDE Frank",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                
              ],
            ),

             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "NOS CONTACTS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "+237 6.....",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "contact@3mc.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Rue Foé-Omnisport Yaoundé",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'popping'
                    ),
                  ),
                ),
                
              ],
            ),
                
          ],
        ),
        const SizedBox(height: 10,),
        Divider(
      color: Colors.white,
      height: 1,
    ),
    Center(
      child: TextButton(
              onPressed: () {
                // Navigate to the privacy policy page in French
              },
              child: const Text(
                '© 2023 Copyright 3M Consulting SARL. All rights reserved.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontFamily: 'popping',
                ),
              ),
            ),
    ),
        
        ],
        )
      )
    ;
  }
}

// class Footer1 extends StatelessWidget {
//   const Footer1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//      color: APPBAR_COLOR,
//       width: MediaQuery.sizeOf(context).width,
//       padding: const EdgeInsets.only(left:16.0,right: 16.0,),
//       child: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         scrollDirection: Axis.vertical,
//         child:
//             Row(
//               children: [
//                 _buildLeftColumn(),
//                 const SizedBox(width: 32),
//                 _buildCenterColumn(),
//                 const SizedBox(width: 32),
//                 _buildRightColumn(),
//               ],
//             ),
//           //   const SizedBox(height: 8),
//           //   _buildBottomDivider(),
//           // ],
//         ),
//       )
//     ;
//   }

//   Widget _buildTopDivider() {
//     return Divider(
//       color: Colors.white,
//       height: 1,
//     );
//   }

//   Widget _buildBottomDivider() {
//     return Divider(
//       color: Colors.white,
//       height: 1,
//     );
//   }

Widget _buildLeftColumn() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "A PROPOS DE NOUS",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 8),
      GestureDetector(
        onTap: () {},
        child: const Text(
          "Politique de confidentialite",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 14,
          ),
        ),
      ),
      const SizedBox(height: 8),
      GestureDetector(
        onTap: () {},
        child: const Text(
          "Terms And Contidions",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 14,
          ),
        ),
      ),
      const SizedBox(height: 8),
      // Image.asset(
      //   "assets/logo.png",
      //   width: 100,
      // ),
      const SizedBox(height: 8),
      const Text(
        "© 2023 Copyright 3M Consulting SARL. All rights reserved.",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    ],
  );
}

//   Widget _buildCenterColumn() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "HORAIRES D'OUVERTURE",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           "Fermee Dimanche, Samedi",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//           ),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           "Ouvert De Lundi a vendredi",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//           ),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           "Ouvert De 08H 17H",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildRightColumn() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "NOS CONTACTS",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 8),
//         GestureDetector(
//           onTap: () {},
//           child: Text(
//             "237-6.",
//             style: TextStyle(
//               color: Colors.blue,
//               fontSize: 14,
//             ),
//           ),
//         ),
//         const SizedBox(height: 8),
//         GestureDetector(
//           onTap: (){}
//         )
//     ]);

//   }}
