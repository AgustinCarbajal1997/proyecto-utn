import 'package:flutter/material.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Mi app en clase",
        home: PaginaPrincipal(title: "Titulo pagina"));
  }
}

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key, required this.title});

  final String title;

  @override
  State<PaginaPrincipal> createState() => _EstadoPrincipal();
}

class _EstadoPrincipal extends State<PaginaPrincipal> {
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
                child: const Row(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 70,
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 40.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                    ),
                    Expanded(
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
              child: Column(
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
                    height: 60,
                    width: 60,
                    color: const Color(0xfffff8eb),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      child: Container(
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
                      ),
                    ),
                  )
                ],
              )),
            ],
          ),
        ],
      ),
    ));
  }
}
