//cette page contient le code source pour la page du TAF
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/footer.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SelectedIndex extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}


class TAFPage extends StatefulWidget {
  const TAFPage({super.key});

  @override
  State<TAFPage> createState() => _TAFPageState();
}

class _TAFPageState extends State<TAFPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(),
      bottomNavigationBar: const Footer1(),
    );
  }
}