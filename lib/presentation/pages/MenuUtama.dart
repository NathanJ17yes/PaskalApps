import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          const SizedBox(height: 50),
          Stack(
            children: [
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 50)),
                  SizedBox(
                      width: 102,
                      height: 90,
                      child: Image.asset("lib/presentation/images/Logo_GKI.png")),
                  const Padding(padding: EdgeInsets.only(left: 5)),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "GKI",
                        style:
                            TextStyle(fontSize: 25, color: Color(0xff75b3b1)),
                      ),
                      Text("Pasirkaliki",
                          style:
                              TextStyle(fontSize: 25, color: Color(0xff75b3b1)))
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 460,
            height: 650,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xfff6f6f6)),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(left: 30)),
                Stack(
                  children: [
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 40)),
                        SizedBox(
                          width: 190,
                          height: 141,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.asset(
                              "lib/presentation/images/menuKebak.jpg",
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Jadwal Kebaktian",
                              textAlign: TextAlign.left,
                            ),
                            const Text("GKI Pasirkaliki",
                                textAlign: TextAlign.start),
                            const Padding(padding: EdgeInsets.only(top: 30)),
                            SizedBox(
                              width: 100,
                              height: 28,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff75b3b1)),
                                onPressed: () {context.goNamed('MenuIbadah');},
                                child: const Text(
                                  "more info ",
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 40)),
                        SizedBox(
                          width: 190,
                          height: 141,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.asset("lib/presentation/images/kegiatanGereja.jpg"),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Jadwal Kegiatan",
                              textAlign: TextAlign.left,
                            ),
                            const Text("External", textAlign: TextAlign.start),
                            const Padding(padding: EdgeInsets.only(top: 30)),
                            SizedBox(
                              width: 100,
                              height: 28,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff75b3b1)),
                                onPressed: () {
                                  context.goNamed('MenuKex');
                                },
                                child: const Text(
                                  "more info ",
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 40)),
                    SizedBox(
                      width: 190,
                      height: 141,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.asset("lib/presentation/images/contact.jpg"),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Contact and Info",
                          textAlign: TextAlign.left,
                        ),
                        const Text("GKI Pasirkaliki", textAlign: TextAlign.start),
                        const Padding(padding: EdgeInsets.only(top: 30)),
                        SizedBox(
                          width: 100,
                          height: 28,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff75b3b1)),
                            onPressed: () {
                              context.goNamed('Contact');
                            },
                            child: const Text(
                              "more info ",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 40)),
                    SizedBox(
                      width: 190,
                      height: 141,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.asset("lib/presentation/images/kegiatanGereja.jpg"),
                      ),
                    ),const Padding(padding: EdgeInsets.only(left: 10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sejarah",
                          textAlign: TextAlign.left,
                        ),
                        const Text("GKI Pasirkaliki", textAlign: TextAlign.start),
                        const Padding(padding: EdgeInsets.only(top: 30)),
                        SizedBox(
                          width: 100,
                          height: 28,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff75b3b1)),
                            onPressed: () {
                              context.goNamed('Sejarah');
                            },
                            child: const Text(
                              "more info ",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
