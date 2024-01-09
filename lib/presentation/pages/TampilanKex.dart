import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class External extends StatefulWidget {
  const External({super.key});

  @override
  State<External> createState() => _ExternalState();
}

class _ExternalState extends State<External> {
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
                    image: AssetImage("lib/presentation/images/basket.jpeg"),
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
                    context.goNamed('MenuKex');
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
                    Text("Kegiatan External",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 315, left: 50),
                    width: 10,
                    height: 65,
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
                        margin: const EdgeInsets.only(top: 315, left: 70),
                        child: const Text(
                          "Basket Dummy",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 70),
                        child: const Text(
                          "Olahraga Basket Bersama ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 53, 52, 52),
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 70),
                        child: const Text(
                          "GKI Paskal",
                          style: TextStyle(
                              color: Color.fromARGB(255, 53, 52, 52),
                              fontSize: 14),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 50, right: 59),
                        child: Text(
                            "Mari ikuti kegiatan Basket bersama dengan Jemaat GKI Pasirkaliki, tidak memandang umur mari kita have fun dan berkeringat bersama - sama"),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 50)),
                          Icon(
                            Icons.location_on,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("SMPK BPK 1"),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 50)),
                          Icon(
                            Icons.access_time_filled,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("18:30 - 21:30 WIB")
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 50)),
                          Icon(
                            Icons.person,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Pdt. Jhon Doe")
                        ],
                      ),
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
