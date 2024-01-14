import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:paskalapps/domain/entities/IbadahModel.dart';
import 'package:paskalapps/domain/repositories_interface/DataPaskalAppsRepository.dart';


class IbadahRepository extends GetxController implements DataPaskalAppsRepository{
  static IbadahRepository get instance => Get.find();

  final db = FirebaseFirestore.instance;

  
  @override
  CollectionReference ibadah = FirebaseFirestore.instance.collection("PaskalApps");
  
  @override
  Future<List<Map<String, dynamic>>> FetchData() async {
    QuerySnapshot querySnapshot = await ibadah.get();
    List<Map<String, dynamic>> data = [];

    querySnapshot.docs.forEach((doc) {
      data.add(doc.data() as Map<String, dynamic>);


     });
     return data;
  }
  
}