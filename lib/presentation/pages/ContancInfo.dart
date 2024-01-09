import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactAndInfo extends StatefulWidget {
  const ContactAndInfo({super.key});

  @override
  State<ContactAndInfo> createState() => _ContactAndInfoState();
}

class _ContactAndInfoState extends State<ContactAndInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 500,
                height: 276,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("lib/presentation/images/contact.jpg"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 15),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () {
                    context.goNamed('MainPage');
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 230),
                width: 415,
                height: 650,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(47),
                  color: const Color.fromARGB(255, 250, 250, 250),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 250),
                child: const Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 35)),
                    Text("GKI Paskal",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                    Padding(padding: EdgeInsets.only(left: 155)),
                    Text("Contact and Info",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 325, left: 50),
                    width: 10,
                    height: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 42, 195, 255)),
                  ),
                ],
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 325, left: 70),
                        child: const Text(
                          "Contact Us",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 24),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 70),
                        child: const Text(
                          "Hubungi kontak dibawah untuk",
                          style: TextStyle(
                              color: Color.fromARGB(255, 53, 52, 52),
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 70),
                        child: const Text(
                          "info lebih lanjut",
                          style: TextStyle(
                              color: Color.fromARGB(255, 53, 52, 52),
                              fontSize: 14),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 70),
                        width: 250,
                        height: 121,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromARGB(255, 225, 229, 231)),
                        child: const Stack(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Social Media",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 20)),
                                    Icon(FontAwesomeIcons.instagram),
                                    Padding(padding: EdgeInsets.only(left: 15)),
                                    Text("@gkiPaskal")
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 20)),
                                    Icon(FontAwesomeIcons.youtube),
                                    Padding(padding: EdgeInsets.only(left: 15)),
                                    Text("Youtube.com/GKIPaskal")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 70),
                        width: 250,
                        height: 121,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromARGB(255, 225, 229, 231)),
                        child: const Stack(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Phone & Email",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 20)),
                                    Icon(FontAwesomeIcons.phone),
                                    Padding(padding: EdgeInsets.only(left: 15)),
                                    Text("+62 8xxxxxxxxx")
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 20)),
                                    Icon(Icons.email),
                                    Padding(padding: EdgeInsets.only(left: 15)),
                                    Text("Youtube.com/GKIPaskal")
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 70),
                        width: 250,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromARGB(255, 225, 229, 231)),
                        child: const Stack(
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 45,
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 40)),
                                    Text("Jln. Surya Sumantri no 43B ")
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
