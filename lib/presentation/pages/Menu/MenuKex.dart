import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class KegiatanEx extends StatelessWidget {
  const KegiatanEx({super.key});

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
                color: Color.fromARGB(255, 42, 195, 255),
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
                    const Padding(padding: EdgeInsets.only(left: 40)),
                    const Text(
                      "Kegiatan External GKI Pasirkaliki ",
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
                  Container(
                width: 372,
                height: 215,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("lib/presentation/images/basket.jpeg"),
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
                          Padding(padding: EdgeInsets.only(left: 110)),
                          Text(
                            "Basket",
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 120)),
                          Text(
                            "SMPK BPK 1 ",
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
                          const Padding(padding: EdgeInsets.only(left: 111)),
                          ElevatedButton(
                              onPressed: () {
                                context.goNamed("tampilanKex");
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(255, 42, 195, 255)),
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
                    image: AssetImage("lib/presentation/images/badminton.jpeg"),
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
                          Padding(padding: EdgeInsets.only(left: 95)),
                          Text(
                            "Badminton",
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 90)),
                          Text(
                            "Gor Sudirman",
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
                          const Padding(padding: EdgeInsets.only(left: 90)),
                          ElevatedButton(
                              onPressed: () {
                                context.goNamed("Badminton");
                              },
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 42, 195, 255)),
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
                    image: AssetImage("lib/presentation/images/komsel.jpeg"),
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
                          Padding(padding: EdgeInsets.only(left: 55)),
                          Text(
                            "Komsel Paskal",
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
                            "Surya Sumantri",
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
                                context.goNamed("Komsel");
                              },
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 42, 195, 255)),
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
          
        ])
      ],
    ));
  }
}