//cette page contient le code source pour la page du TAF
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/footer.widget.dart';
import 'package:flutter/material.dart';
class PublishOffer extends StatefulWidget {
  const PublishOffer({super.key});

  @override
  State<PublishOffer> createState() => _PublishOfferState();
}

class _PublishOfferState extends State<PublishOffer> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(),
      bottomNavigationBar: Footer1(),
    );
  }
}