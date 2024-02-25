import 'package:flutter/material.dart';

//widget reutilisable pour la textformfield avec des champs supplementaires comme le keyboardtype et le labeltext
class TextFormFieldPers1 extends StatelessWidget {
  bool isPass;
  String hintext;
  int? maxlenght;
  bool putEye;
  TextInputType keyboardType;
  String labeltext;
  TextEditingController? controller;
  Function? typePassword;
  Color colorlabel;
  Color backgroundTextformfield;
  BorderSide borderSidetextformfield;
  TextFormFieldPers1(
      {super.key,
      required this.isPass,
      required this.keyboardType,
      required this.labeltext,
      required this.hintext,
      this.controller,
      this.maxlenght,
      required this.putEye,
      this.typePassword,
      required this.backgroundTextformfield,
      required this.colorlabel,
      required this.borderSidetextformfield
      });

  @override
  Widget build(BuildContext context) {
    return Container(
        //margin: const EdgeInsets.only(left: 14, right: 14),
        
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(labeltext,style: TextStyle(fontFamily: 'popping',color: colorlabel,fontSize: 10),
            ),),
            TextFormField(
              keyboardType: keyboardType,
              maxLength: maxlenght ?? 20,
              controller: controller,
              obscureText: isPass,
              validator: (value) {
                value = value!.trim();
                if (value.isEmpty) {
                  return " veillez remplir ce champ";
                }
              },
              style: const TextStyle(color: Colors.black, letterSpacing: 1.2),
              decoration: InputDecoration(
                  errorStyle: const TextStyle(height: 0),
                   fillColor:backgroundTextformfield,
                   filled: true,
                   constraints:BoxConstraints(minHeight: 15),
                  suffixIcon: putEye
                      ? IconButton(
                          icon: const Icon(Icons.remove_red_eye),
                          onPressed: () {
                            typePassword!();
                          },
                        )
                      : null,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: borderSidetextformfield,
                      
                      ),
                      
                  counterText: "",
                  hintText: hintext,
                  //contentPadding: const EdgeInsets.only(left: 90.0),
                  hintStyle: const TextStyle(letterSpacing: 0.0, fontSize: 10)),
            ),
          ],
        ));
  }
}

// widget reutilisable pour la liste deroulante de valeur
class DropdownFormFieldPers1 extends StatelessWidget {
  final List<String> items;
  final String hintext;
  final String labeltext;
  final ValueChanged<String?> onChanged;

  DropdownFormFieldPers1({
    required this.items,
    required this.hintext,
    required this.labeltext,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    String? dropdownValue;

    return Container(
      margin: const EdgeInsets.only(left: 14, right: 14),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(labeltext),
          ),
          DropdownButtonFormField<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              counterText: "",
              hintText: hintext,
              contentPadding: const EdgeInsets.only(left: 90.0),
              hintStyle: const TextStyle(letterSpacing: 0.0, fontSize: 12),
            ),
            onChanged: onChanged,
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}