import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:paskalapps/database/model/IbadahModel.dart';
import 'package:paskalapps/domain/Provider/dataRepositoryProvider.dart';
import 'package:paskalapps/domain/reprisitories/IbadahRepository.dart';

class ibadah extends StatefulWidget {
  ibadah({super.key});
  
  @override
  State<ibadah> createState() => _ibadahState();
}

class _ibadahState extends State<ibadah> {
  final ibadahRepo = dataRepositoryProvider().dataRepo;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FutureBuilder<List<IbadahModel>>(
              future: ibadahRepo.FetchData(),
              builder: (BuildContext context, AsyncSnapshot<List<IbadahModel>> snapshot){
                if (snapshot.hasData) {
                  // IbadahModel dataIbadah = snapshot.data as IbadahModel;
                  return ListView.builder( itemCount: snapshot.data!.length, itemBuilder: (BuildContext context, int index) {
                    return Stack(
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
                          child: const Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 35)),
                              Text("Ibadah I",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0))),
                              Padding(padding: EdgeInsets.only(left: 215)),
                              Text("GKI Pasirkaliki",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0))),
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
                                  margin:
                                      const EdgeInsets.only(top: 315, left: 70),
                                  child: Text(
                                   snapshot.data![index].judul,
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 70),
                                  child: const Text(
                                    "Bacaan utama diambil dari ",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 53, 52, 52),
                                        fontSize: 14),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, left: 70),
                                  child: const Text(
                                    "Yohanes 3 : 16",
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
                                      "Pada minggu ini Tuhan memberikan Firmanya yang berjudul Integritas. Semoga Firmannya bisa membuat JemaatNya balik ke jalan yang benar melalui jalur Integritas."),
                                ),
                                const SizedBox(
                                  height: 40,
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
                                const SizedBox(
                                  height: 15,
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
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Ruang Kebaktian GKI Pasirkaliki"),
                                        Text(("Pos Surya Sumantri"))
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
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
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Yohanes 3 : 16"),
                                        Text("2 Tesalonika 3 : 1-14"),
                                        Text("Mazmur 2 : 1-21"),
                                        Text("Matius 4 : 14")
                                      ],
                                    ),
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
                                    Text("13:00 - 14:30 WIB")
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    );
                  });
                }else if(snapshot.hasError){
                  return Text("${snapshot.error}");
                }
                return CircularProgressIndicator();
              })
        ],
      ),
    );
  }
}
