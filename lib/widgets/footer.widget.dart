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
      padding: const EdgeInsets.only(left:16.0,right: 16.0,),
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
