//widget reutilisable pour les offres
import 'package:flutter/material.dart';

class OffresWidget extends StatefulWidget {
  final String firstext;
  final String pricetext;
  final String datetext;
  const OffresWidget({super.key,required this.firstext,required this.pricetext,required this.datetext});

  @override
  State<OffresWidget> createState() => _OffresWidgetState();
}

class _OffresWidgetState extends State<OffresWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ConstrainedBox(constraints: BoxConstraints(
        maxWidth: 400
      ),
      
      child:Card (
       elevation: 5.0,
      child:Row(
        //spacing: 8,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          
          Column(
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                  height: 50,
                  width: 100,
                  color: Color.fromRGBO(217, 217, 217, 1),
                  padding: EdgeInsets.all(10.0),
                  child: Text("IMG"),

                ),
              ),
              const SizedBox(height: 4,),
              TextButton(onPressed: (){}, child: Text(widget.firstext,style: TextStyle(fontFamily: 'popping',color: Colors.black))),
              Row(
                children: [
                  TextButton(onPressed: (){}, child: Text("Commentaires",style: TextStyle(fontFamily: 'popping',color: Colors.black),)),
                  const SizedBox(height: 4,),
                  TextButton(onPressed: (){}, child: Text("Commenter",style: TextStyle(fontFamily: 'popping',color: Colors.black))),
                ],
              )
            ],
          ),
          Column(
            children: [
              Text(widget.datetext,style: TextStyle(color: Color.fromRGBO(217, 217, 217, 1),),),
              const SizedBox(height: 6,),
              Text(widget.pricetext),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}
              , child: Text("Postuler"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
              ),
              
              
              )
            ],
          ),
        ],
      ),
      ),
    ));
  }
}