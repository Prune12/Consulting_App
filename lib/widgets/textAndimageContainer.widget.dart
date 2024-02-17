import 'dart:ffi';

import 'package:flutter/material.dart';

class TextAndContainerWidget extends StatefulWidget {
  final double height;
  final double width;
  final ImageProvider image;
  final Text text1;
  final Text text2;
  TextAndContainerWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.image,
      required this.text1,
      required this.text2});

  @override
  State<TextAndContainerWidget> createState() => _TextAndContainerWidgetState();
}

class _TextAndContainerWidgetState extends State<TextAndContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:16.0),
      height: widget.height,
      width: widget.width,

      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   image: DecorationImage(
      //     image: widget.image,
      //     fit: BoxFit.cover,
      //   ),

      // ),
      // child: widget.text,
      child: Column(
        children: [
          Container(
            width: widget.width * 0.7,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          widget.text1,
          SizedBox(
            height: 8.0,
          ),
          widget.text2,
        ],
      ),
    );
  }
}
