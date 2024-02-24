//cette page contient le code source pour la page du TAF
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/footer.widget.dart';
import 'package:flutter/material.dart';
class ActualityPage extends StatefulWidget {
  const ActualityPage({super.key});

  @override
  State<ActualityPage> createState() => _ActualityPageState();
}

class _ActualityPageState extends State<ActualityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(),
      bottomNavigationBar: const Footer1(),
    );
  }
}