//cette page contient le widget reutilisable pour ecrire des commentaires
import 'package:flutter/material.dart';

class CommentaireWidget extends StatefulWidget {
  final String? imagepath;
  final String? name;
  final String? date;
  final TextButton text;
  final String? paragraphe;
  const CommentaireWidget(
      {super.key,
      required this.imagepath,
      required this.text,
      this.date,
      required this.name,
      required this.paragraphe});

  @override
  State<CommentaireWidget> createState() => _CommentaireWidgetState();
}

class _CommentaireWidgetState extends State<CommentaireWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
   child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Column(children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.imagepath!),
              radius: 25,
            ),
            const SizedBox(
              width: 2.0,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    widget.name!,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'popping'),
                  ),
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15,
                        )),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      widget.date!,
                      style:
                          const TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 4.0,
        ),
        Expanded(
            child: Text(
          widget.paragraphe!,
          style: const TextStyle(color: Colors.black, fontSize: 15.0),
        )),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shortcut_outlined, color: Colors.grey)),
            widget.text,
          ],
        )
      ]),
    ));
  }
}
