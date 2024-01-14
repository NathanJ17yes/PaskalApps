import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:paskalapps/domain/entities/IbadahModel.dart';
import 'package:paskalapps/domain/repositories_interface/DataPaskalAppsRepository.dart';


class CnIRepository extends GetxController implements DataPaskalAppsRepository{
  static CnIRepository get instance => Get.find();

  final db = FirebaseFirestore.instance;

  @override
  
  CollectionReference CnI = FirebaseFirestore.instance.collection('Contacct');

  @override
  Future<List<Map<String, dynamic>>> FetchData() async{
    QuerySnapshot querySnapshot = await CnI.get();

    List<Map<String, dynamic>> data = [];

    querySnapshot.docs.forEach((doc) {
      data.add(doc.data() as Map<String, dynamic>);

     });
     return data;
  }
}