import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:paskalapps/domain/entities/IbadahModel.dart';
import 'package:paskalapps/domain/Provider/dataRepositoryProvider.dart';
import 'package:paskalapps/domain/repositories/IbadahRepository.dart';

class ibadah2 extends StatefulWidget {
  ibadah2({super.key});

  @override
  State<ibadah2> createState() => _ibadah2State();
}

class _ibadah2State extends State<ibadah2> {
  final IbadahRepository dataIbadah = IbadahRepository();

  List<Map<String, dynamic>> data = [];
  void initState() {
    super.initState();
    getdataIbadahFromFirebase();
  }

  Future<void> getdataIbadahFromFirebase() async {
    List<Map<String, dynamic>> fetchedData = await dataIbadah.FetchData();

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
                    image: AssetImage("lib/images/Ibadah.jpeg"),
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
                    context.goNamed('MenuIbadah');
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
                child:  Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 35)),
                    Text(data.isNotEmpty ? data[1]['Id'] : 'No Data',
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
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
                        color: const Color(0xfffaf000)),
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
                           data.isNotEmpty ? data[1]['judul'] : 'No Data',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 70),
                        child: const Text(
                          "Bacaan utama diambil dari ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 53, 52, 52),
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 70),
                        child:  Text(
                          data.isNotEmpty ? data[1]['Ayat_Alkitab'][0] : 'No Data',
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
                        child: Text(data.isNotEmpty ? data[1]['Deskripsi'] : 'No Data',)
                      ),
                      const SizedBox(
                        height: 40,
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
                          Text(data.isNotEmpty ? data[1]['Pendeta'] : 'No Data',)
                        ],
                      ),
                      const SizedBox(
                        height: 15,
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Ruang Kebaktian GKI Pasirkaliki"),
                              Text(data.isNotEmpty ? data[1]['Tempat'] : 'No Data',)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(data[1]['Ayat_Alkitab'].length, (index) => Text(data[1]['Ayat_Alkitab'][index]))
                          ),
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
                          Text(data.isNotEmpty ? data[1]['Waktu'] : 'No Data',)
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
