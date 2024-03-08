import 'package:consulting_app/routes/app.routes.dart';
import 'package:consulting_app/utils/Themes.dart';
import 'package:consulting_app/widgets/appbar2.widget.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final TextEditingController _controller = TextEditingController();
  final _channel = WebSocketChannel.connect(
    Uri.parse('wss://echo.websocket.events'),
  );

  List<String> _messages = [];

  // Méthode pour ajouter un message à la liste
  void _addMessage(String message) {
    setState(() {
      _messages.add(message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, AppRoutes.offre);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
          iconSize: 30,
          color: Colors.black,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 2,
        decoration: BoxDecoration(
          color: BUTTON_COLOR,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
           const  Center(
              child: Text(
                            "Ally",
                            style:  TextStyle(
                                color: Colors.white,
                                fontFamily: 'popping',
                                fontSize: 30),
                            textDirection: TextDirection.ltr,
                          ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: ListView.separated(
                itemCount: _messages.length,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 11.0,
                ),
                itemBuilder: (context, index) {
                  return Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/images/boss.jpg"),
                          radius: 30,
                        ),
                        const SizedBox(
                  width: 40.0,
                ),
                        Flexible(
                            child: Container(
                          height: 80,
                          width: 400,
                          padding: const EdgeInsets.only(left: 12, top: 12),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Text(
                            _messages[index],
                            style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'popping',
                                fontSize: 14),
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                         const SizedBox(
                  width: 40.0,
                ),
                const Icon(Icons.file_download_done_outlined,color:  Colors.green,size: 16,)
                      ],
                    ),
                  );
                },
              ),
            ),
            Form(
              child: Row(
                // Wrap TextFormField and FloatingActionButton in a Row
                children: [
                  Expanded(
                    // Ensure TextFormField takes remaining space
                    child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                          hintText: 'Message',
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontFamily: 'popping',
                              fontSize: 20),
                          suffixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.attach_file,
                                    color: Colors.grey, size: 20),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.linked_camera,
                                    color: Colors.grey, size: 20),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.keyboard_voice_rounded,
                                    color: Colors.grey, size: 20),
                              ),
                            ],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                    ),
                  ),
                  FloatingActionButton(
                    // Add FloatingActionButton to the Row
                    backgroundColor: Colors.white,
                    onPressed: _sendMessage,
                    tooltip: 'Send message',
                    child: const Icon(
                      Icons.send,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      _channel.sink.add(_controller.text);
      _addMessage(_controller.text); // Ajouter le message à la liste locale
      _controller.clear(); // Effacer le champ de saisie après envoi
    }
  }

  @override
  void dispose() {
    _channel.sink.close();
    _controller.dispose();
    super.dispose();
  }
}
