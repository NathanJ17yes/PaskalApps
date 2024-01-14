import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:paskalapps/domain/repositories/SejarahRepository.dart';

class Sejarah extends StatefulWidget {
  const Sejarah({super.key});

  @override
  State<Sejarah> createState() => _SejarahState();
}

class _SejarahState extends State<Sejarah> {
  final SejarahRepository dataSejarah = SejarahRepository();

  List<Map<String, dynamic>> data = [];

  void initState() {
    super.initState();
    getSejarahFromFirebase();
  }

  Future<void> getSejarahFromFirebase() async {
    List<Map<String, dynamic>> fetchedData = await dataSejarah.FetchData();

    setState(() {
      data = fetchedData;
    });
  }

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
                    image: AssetImage("lib/presentation/images/Ibadah.jpeg"),
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
                    Text(
                      "Sejarah",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 215)),
                    Text("GKI Pasirkaliki",
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
                        color:  const Color.fromARGB(255, 42, 195, 255)),
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
                        child: Text(
                          data.isNotEmpty ? data[0]['Judul'] : 'No Data',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 70),
                        child: const Text(
                          "GKI Pasirkaliki ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                       Padding(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        child: Text(
                            data.isNotEmpty ? data[0]['isi'] : 'No Data',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        child: Text(
                          data.isNotEmpty ? data[0]['isi2'] : 'No Data',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
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
