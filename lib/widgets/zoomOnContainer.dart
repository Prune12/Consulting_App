// cette classe construit un widget reutilisable qui contient l'animation permettant de zoomer sur les images
import 'package:flutter/material.dart';
class ZoomOnHover extends StatefulWidget {
  final Widget child;

  ZoomOnHover({required this.child});

  @override
  _ZoomOnHoverState createState() => _ZoomOnHoverState();
}

class _ZoomOnHoverState extends State<ZoomOnHover> {
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => scale = 1.1),
      onExit: (event) => setState(() => scale = 1),
      child: Transform.scale(
        scale: scale,
        child: widget.child,
      ),
    );
  }
}
