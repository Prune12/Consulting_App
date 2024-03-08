import 'package:consulting_app/routes/app.routes.dart';
import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:consulting_app/widgets/circleAvatar.widget.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ListMessagePage extends StatefulWidget {
  const ListMessagePage({super.key});

  @override
  State<ListMessagePage> createState() => _ListMessagePageState();
}

class _ListMessagePageState extends State<ListMessagePage> {
  final TextEditingController _controller = TextEditingController();

  // ignore: prefer_final_fields
  List<Widget> _contact = [
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "Ally"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "Brenda"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "Arthur"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "calvin"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "Antoine"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "olivia"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "therese"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "Anti"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "ngassa"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "nadège"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "nadège"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "nadège"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "nadège"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "nadège"),
    const Avatar(
        imageUrl: "assets/images/boss.jpg", radius: 40, namecontact: "nadège"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(),
        body: SingleChildScrollView(

          scrollDirection: Axis.vertical,

          child:Wrap(
            direction : Axis.vertical,
            
            children: [
          
           Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.6,
            decoration: BoxDecoration(
              color: BUTTON_COLOR,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Center(
                  child: SearchBar3(50, 400, 20, 30, 15),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.separated(
                    itemCount: _contact.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 50.0,
                    ),
                    itemBuilder: (context, index) {
                      return _contact[index];
                    },
                  ),
                ),
                
              ],
            ),
          ),
         const SizedBox(height: 50),
                
                     Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height *2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(children: [
                    const SizedBox(
                      height: 50.0,
                    ),
                    Center(
                      child: Text(
                        "Messages",style: TextStyle(color: Colors.grey,fontFamily: 'popping',fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    
                    MessageWidget(imageurl:"assets/images/boss.jpg",width: MediaQuery.of(context).size.width,message: "Hello! how are you",hour: "16:50",namesender: "Aly"),
                    const SizedBox(
                      height: 20.0,
                    ),
                  
                    MessageWidget(imageurl:"assets/images/boss.jpg",width: MediaQuery.of(context).size.width,message: "Hello! how are you",hour: "16:50",namesender: "Aly"),
                    const SizedBox(
                      height: 20.0,
                    ),
                    MessageWidget(imageurl:"assets/images/boss.jpg",width: MediaQuery.of(context).size.width,message: "Hello! how are you",hour: "16:50",namesender: "Aly"),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                   
                    CircleAvatar(backgroundColor: BUTTON_COLOR,radius: 40,child: IconButton(onPressed: (){},icon: Icon(Icons.edit,color:Colors.white),iconSize: 30,),)
                     ],),
                    ]),
                )







        ])
        ),
        
        );
  }
}

Widget SearchBar3(double height, double width, double iconsize,
    double widthsizebox, double fontsizehintext) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        border: const Border.fromBorderSide(BorderSide(color: Colors.grey)),
        borderRadius: BorderRadius.circular(30),
        color: Colors.white),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(
        child: TextFormField(
          keyboardType: TextInputType.text,
          //maxLength: 20,
          decoration: InputDecoration(
              fillColor: Colors.blue,
              hintText: "Rechercher",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: BorderSide.none,
              ),
              hintStyle:
                  TextStyle(fontSize: fontsizehintext, color: Colors.grey),
              hintTextDirection: TextDirection.ltr),
        ),
      ),
      SizedBox(
        width: widthsizebox,
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
        iconSize: iconsize,
        color: Colors.grey,
      ),
    ]),
  );
}



class MessageWidget extends StatefulWidget {
  MessageWidget({super.key,required this.imageurl,required this.width,required this.hour,required this.message,required this.namesender});
  String imageurl;
  double width;
  String message;
  String hour;
  String namesender;

  @override
  State<MessageWidget> createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: (){
      Navigator.pushReplacementNamed(context, AppRoutes.sendmessage);
    },
  
  
  child:
  
  
  Container(
    height: 200,
    width: widget.width,
    padding: EdgeInsets.only(left: 30,top: 30),
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment : CrossAxisAlignment.start,
      children: [
        CircleAvatar(backgroundImage: AssetImage(widget.imageurl),radius: 50,),
        
        Column(
          children: [
            Text(widget.namesender,style: TextStyle(color: Colors.black,fontFamily: 'popping',fontSize: 20)),
        const SizedBox(height: 30,),
            Text(widget.message,style: TextStyle(color: Colors.grey,fontFamily: 'popping',fontSize: 20)),
          ],
        ),
        Text(widget.hour,style: TextStyle(color: Colors.black,fontFamily: 'popping',fontSize: 20)),

      ],
    ),
  ));
  }
}

