import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuIbadah extends StatefulWidget {
  const MenuIbadah({super.key});

  @override
  State<MenuIbadah> createState() => _MenuIbadahState();
}

class _MenuIbadahState extends State<MenuIbadah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(children: [
          Stack(children: [
            Container(
              width: 771,
              height: 71,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xfffaf000),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        context.goNamed('MainPage');
                      },
                    ),
                    const Padding(padding: EdgeInsets.only(left: 55)),
                    const Text(
                      "Ibadah GKI Pasirkaliki ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 20)),
              Stack(
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "lib/presentation/images/Ibadah.jpeg",
                        width: 372,
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 70)),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 45)),
                          Text(
                            "Ibadah Umum I",
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 55)),
                          Text(
                            "GKI PasirKaliki",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 50)),
                          ElevatedButton(
                              onPressed: () {
                                context.goNamed('tampilanIbadah');
                              },
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 255, 255, 0)),
                              child: const Text(
                                "Lihat Jadwal",
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 20)),
              Stack(
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "lib/presentation/images/Ibadah.jpeg",
                        width: 372,
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 70)),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 45)),
                          Text(
                            "Ibadah Umum II",
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 55)),
                          Text(
                            "GKI PasirKaliki",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 50)),
                          ElevatedButton(
                              onPressed: () {
                                context.goNamed("tampilanIbadah2");
                              },
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 255, 255, 0)),
                              child: const Text(
                                "Lihat Jadwal",
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 20)),
              Stack(
                children: <Widget>[
                  Container(
                width: 372,
                height: 215,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("lib/presentation/images/menuLembang.jpeg"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 70)),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 45)),
                          Text(
                            "Ibadah Lembang",
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 55)),
                          Text(
                            "Pos Lembang",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 50)),
                          ElevatedButton(
                              onPressed: () {
                                context.goNamed("Lembang");
                              },
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 255, 255, 0)),
                              child: const Text(
                                "Lihat Jadwal",
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 20)),
              Stack(
                children: <Widget>[
                  Container(
                width: 372,
                height: 215,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("lib/presentation/images/menuremaja.jpeg"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 70)),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 45)),
                          Text(
                            "Ibadah Remaja",
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 55)),
                          Text(
                            "Pos Surya Sumantri",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 50)),
                          ElevatedButton(
                              onPressed: () {
                                context.goNamed("Remaja");
                              },
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 255, 255, 0)),
                              child: const Text(
                                "Lihat Jadwal",
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ])
      ],
    ));
  }
}
