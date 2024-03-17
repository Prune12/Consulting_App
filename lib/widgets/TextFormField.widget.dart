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
      required this.borderSidetextformfield});

  @override
  Widget build(BuildContext context) {
    return Container(
        //margin: const EdgeInsets.only(left: 14, right: 14),

        child: Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            labeltext,
            style: TextStyle(
                fontFamily: 'popping', color: colorlabel, fontSize: 10),
          ),
        ),
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
              fillColor: backgroundTextformfield,
              filled: true,
              constraints: const BoxConstraints(minHeight: 15),
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

//widget reutilisable pour la textformfield avec des champs supplementaires comme le keyboardtype et le labeltext
class TextFormFieldPers2 extends StatelessWidget {
  bool isPass;
  String hintext;

  bool putEye;
  TextInputType keyboardType;
  String labeltext;
  TextEditingController? controller;
  Function? typePassword;
  Color colorlabel;
  Color? backgroundTextformfield;

  bool? isfilled;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? heigth;
  final Decoration? boxDecoration;
  BorderRadius? radiusforfield;
  final EdgeInsetsGeometry? paddingforfield;
  TextFormFieldPers2({
    super.key,
    required this.isPass,
    required this.keyboardType,
    required this.labeltext,
    required this.hintext,
    this.controller,
     this.isfilled,
    required this.putEye,
    this.typePassword,
    this.backgroundTextformfield,
    required this.colorlabel,
    this.margin,
    this.heigth,
    this.width,
    this.boxDecoration,
    this.radiusforfield,
    this.paddingforfield,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: margin,
        width: width,
        height: heigth,
        decoration: boxDecoration,
  
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                labeltext,
                style: TextStyle(
                    fontFamily: 'popping', color: colorlabel, fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            
          
        
            TextFormField(
              keyboardType: keyboardType,
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
                  fillColor: backgroundTextformfield,
                  filled: isfilled,
                   contentPadding: paddingforfield,
                  
                  suffixIcon: putEye
                      ? IconButton(
                          icon: const Icon(Icons.remove_red_eye),
                          onPressed: () {
                            typePassword!();
                          },
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: radiusforfield??BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  counterText: "",
                  hintText: hintext,
                  //contentPadding: const EdgeInsets.only(left: 90.0),
                  hintStyle: const TextStyle(letterSpacing: 0.0, fontSize: 13)),
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
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? heigth;
  final Decoration? boxDecoration;
  final BorderRadius? radiusforfield;
  final EdgeInsetsGeometry? paddingforfield;

  DropdownFormFieldPers1({
    required this.items,
    required this.hintext,
    required this.labeltext,
    required this.onChanged,
    this.margin,
    this.heigth,
    this.width,
    this.boxDecoration,
    this.paddingforfield,
    this.radiusforfield,
  });

  @override
  Widget build(BuildContext context) {
    String? dropdownValue;

    return Container(
      margin: margin,
      width: width,
      height: heigth,
      decoration: boxDecoration,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(labeltext),
          ),
          const SizedBox(
            height: 15,
          ),
          DropdownButtonFormField<String>(
            borderRadius: radiusforfield,
            padding: paddingforfield,
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down),
            decoration: InputDecoration(
              filled: false,
              border: const OutlineInputBorder(
                //borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey),
              ),
              counterText: "",
              hintText: hintext,
              //contentPadding: const EdgeInsets.only(left: 90.0),
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
