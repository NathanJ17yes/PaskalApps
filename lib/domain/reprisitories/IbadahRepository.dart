import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:paskalapps/database/model/IbadahModel.dart';
import 'package:paskalapps/domain/reprisitories/DataIbadahRepository.dart';


class IbadahRepository extends GetxController implements DataIbadahRepository{
  static IbadahRepository get instance => Get.find();

  final db = FirebaseFirestore.instance;

  
  @override
  Future<List<IbadahModel>> FetchData() async{
    try{
      final snapshot = await db.collection("PaskalApps").get();
      final DataIbadah = snapshot.docs.map((e) => IbadahModel.fromSnapshot(e)).toList(); 
      return DataIbadah;
    } catch(e){
      throw Exception("Failed to load data");
    }
      
    
    
   }

  
  
}