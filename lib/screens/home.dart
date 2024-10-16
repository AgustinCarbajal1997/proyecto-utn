import 'package:flutter/material.dart';

// home
class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
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
                              'https://instagram.fjuj1-1.fna.fbcdn.net/v/t51.2885-19/435390993_938509374430297_8238274131330108327_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjuj1-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=tzf0UGo1pAQQ7kNvgHfE97z&_nc_gid=02a7aeb411fc4b5ca7d41b2606fe9182&edm=AP4sbd4BAAAA&ccb=7-5&oh=00_AYA7Ly87zecUqVH4wk4K7tYCMQhJdSpKu6n1Z25vZKKDHg&oe=6714A364&_nc_sid=7a9f4b',
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Text(
                                  "Agustin Carbajal",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Text(
                                  "En el trabajo",
                                  style: TextStyle(
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
            child: ListView(
              children: [
                Padding(
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
                            'https://img.olympics.com/images/image/private/t_1-1_300/f_auto/primary/r02gssvmslot7zp9pbdu',
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Fernando Gago",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 2,
                  color: Colors.black12,
                ),
                Padding(
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
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNi4qbs0zJlKxHcnxd5Wt1AgVdUFiSvxLSdg&s',
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Juan Roman Riquelme",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
