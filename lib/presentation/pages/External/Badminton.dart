import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:paskalapps/domain/repositories/ExternalRepository.dart';

class Badminton extends StatefulWidget {
  const Badminton({super.key});

  @override
  State<Badminton> createState() => _BadmintonState();
}

class _BadmintonState extends State<Badminton> {
  final ExternalRepository dataExternal = ExternalRepository();

  
  List<Map<String, dynamic>> data = [];

  void initState() {
    super.initState();
    getExternalFromFirebase();
  }

  Future<void> getExternalFromFirebase() async {
    List<Map<String, dynamic>> fetchedData = await dataExternal.FetchData();

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
                    image: AssetImage("lib/presentation/images/badminton.jpeg"),
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
                          "Olahraga Badminton Bersama ",
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
                      Padding(
                        padding: EdgeInsets.only(left: 50, right: 59),
                        child: Text(
                            data.isNotEmpty ? data[0]['Deskripsi'] : 'No Data'),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 50)),
                          Icon(
                            Icons.location_on,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(data.isNotEmpty ? data[0]['Tempat'] : 'No Data'),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 50)),
                          Icon(
                            Icons.access_time_filled,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(data.isNotEmpty ? data[0]['Waktu'] : 'No Data')
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 50)),
                          Icon(
                            Icons.person,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(data.isNotEmpty
                              ? data[0]['Contact_Person']
                              : 'No Data')
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
