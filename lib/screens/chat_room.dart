import 'package:flutter/material.dart';
//chat room

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key, required this.title});

  final String title;

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(
        //  title: const Text(
        //    "Esta es mi primera app ndeah",
        //  ),
        //  backgroundColor: Colors.black,
        //  foregroundColor: Colors.white,
        //  centerTitle: true,
        //),
        body: Padding(
      padding: const EdgeInsetsDirectional.only(top: 26),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                color: const Color(0xff1b7d6e),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 40,
                        height: 40,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://img.olympics.com/images/image/private/t_1-1_300/f_auto/primary/r02gssvmslot7zp9pbdu',
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          child: Text(
                            "Agustin Carbajal",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                    ),
                  ],
                ),
              )),
            ],
          ),
          Expanded(
            child: Container(
              color: const Color(0xfffff8eb),
              child: ListView(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 8, right: 100),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(0),
                          ),
                        ),
                        child: const Text("Hola Agustin Como estas? "),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 100, right: 8),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xffe2feda),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Text("Todo bien! Sale partidito hoy?"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 8, right: 100),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(0),
                          ),
                        ),
                        child: const Text(
                            "Dale avisale a los pibes, a las 10 esta bien?"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 100, right: 8),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xffe2feda),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Text("Espectacular ese horario"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 100, right: 8),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xffe2feda),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Text("Espectacular ese horario"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 100, right: 8),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xffe2feda),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Text("Espectacular ese horario"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 100, right: 8),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xffe2feda),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Text("Espectacular ese horario"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 100, right: 8),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xffe2feda),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Text("Espectacular ese horario"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 100, right: 8),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xffe2feda),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Text("Espectacular ese horario"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 100, right: 8),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xffe2feda),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Text("Espectacular ese horario"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 100, right: 8),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xffe2feda),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Text("Espectacular ese horario"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 100, right: 8),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xffe2feda),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Text("Espectacular ese horario"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 100, right: 8),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xffe2feda),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffb8b8b8),
                                offset: Offset(-1, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Text("Espectacular ese horario"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: Container(
                        height: 60,
                        color: const Color(0xfffff8eb),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent, width: 0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent, width: 0),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent, width: 0),
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                hintText: "Enviar mensaje"),
                          ),
                        )),
                  ),
                  Container(
                    color: const Color(0xfffff8eb),
                    child: ElevatedButton(
                        onPressed: () {
                          print("Hola mundo");
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xff1b7d6e),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 20.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                        )),
                  ),
                ],
              )),
            ],
          ),
        ],
      ),
    ));
  }
}
