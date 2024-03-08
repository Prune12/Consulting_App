import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
   const Avatar({
    super.key,
    required this.imageUrl,
    required this.radius,
    required this.namecontact,
  });

  final String imageUrl;
  final double radius;
  final String namecontact;

  @override
  Widget build(BuildContext context) {
    return Column(children: [

 CircleAvatar(
      radius: radius + 2,
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(imageUrl),
      ),
    ),
    const SizedBox(height: 20,),
    Text(namecontact,style: TextStyle(color: Colors.white,fontFamily: 'popping',fontSize: 15),)


    ],)

    
   ;
  }
}