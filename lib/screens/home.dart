import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// home
class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  List<dynamic> users = [];

  Map<String, dynamic>? _profile;

  @override
  void initState() {
    super.initState();
    getProfileData();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Color(0xffD9DBDD),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              _profile?["photo"] ?? "",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  _profile?["name"] ?? "",
                                  style: const TextStyle(
                                      fontSize: 22,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  _profile?["status"] ?? "",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 8, left: 8, right: 8),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Chats",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            color: Colors.white,
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.black45,
              ),
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                final name = user["name"];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/chatroom");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 8, right: 8),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              user["photo"],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Text(
                              name,
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black87),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    ));
  }

  void fetchUsers() async {
    final url = Uri.parse("http://10.0.2.2:3100/api/notifications/getAllUsers");
    final response = await http.get(url);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json["users"];
    });
  }

  void getProfileData() async {
    final url =
        Uri.parse("http://10.0.2.2:3100/api/notifications/getUserByEmail");
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body:
          jsonEncode(<String, String>{"email": "magustincarbajal97@gmail.com"}),
    );

    if (response.statusCode > 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      print(response.body);
      setState(() {
        _profile = decodedData["status"];
      });
    } else {
      print(response.body);
    }
  }
}
