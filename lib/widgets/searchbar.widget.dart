//cette page represente le widget reutilisable pour la barre de recherche
import 'package:consulting_app/utils/Themes.dart';
import 'package:flutter/material.dart';
class Searchbar extends StatefulWidget {
final Future<void> Function() onPressed;
  const Searchbar({Key? key,required this.onPressed}) : super(key: key);

  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _localisationController = TextEditingController();
  String _selectedLocation = 'Toutes les localisations';
  bool _isLoading = false;
  final List<String> _categories = [
    'Toutes les catégories',
    'Informatique',
    'Musique',
    'Sport',
    'Art',
    'Cuisine'
  ];
  String _selectedCategory = 'Toutes les catégories';

  void _search() {
    String query = _searchController.text;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Recherche : $query\nLocalisation : $_selectedLocation\nCatégorie : $_selectedCategory',
        ),
      ),
    );
  }
    void _onButtonPressed() async {
    setState(() {
      _isLoading = true;
    });

    await widget.onPressed();

    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          // Large screen layout
          return Container(
               height: 70.0,
             width: 900.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
            child:  Row(
            children: _buildChildren(),
          ),
          )
         ;
        } else {
          // Small screen layout
          return Container(
              height: 200.0,
              width: 300.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
          child:SingleChildScrollView(
            child: Wrap(
              children: _buildChildren(),
            ),
          ));
        }
      },
    );
  }

  List<Widget> _buildChildren() {
    return [
      Expanded(
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Rechercher',
            filled: false,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
      const SizedBox(width: 8.0, height: 8.0),
      Expanded(
        child: TextField(
          controller: _localisationController,
          decoration: InputDecoration(
            hintText: 'Localisation',
            filled: false,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
      IconButton(
        onPressed: _search,
        icon: const Icon(Icons.near_me_sharp, color: Colors.grey),
      ),
      const SizedBox(width: 20.0, height: 8.0),
      DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _selectedCategory,
          items: _categories.map((String category) {
            return DropdownMenuItem<String>(
              value: category,
              child: Text(category),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedCategory = newValue!;
            });
          },
        ),
      ),
      const SizedBox(width: 20.0, height: 8.0),
      ElevatedButton(
      onPressed: _isLoading ? null : _onButtonPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: BUTTON_COLOR,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: _isLoading
          ? CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          : Row(children: <Widget>[
                const Text('Rechercher'),
                const SizedBox(
                  width: 5.0,
                ),
                const Icon(Icons.arrow_forward_ios, color: Colors.white),
              ],
            ),
    )
    ];
  }
}
