import 'package:cloud_firestore/cloud_firestore.dart';
class IbadahModel {
  final String? id;
  final String judul;
  final String pendeta;
  final String waktu;
  final String tempat;
  final List<String> ayatalkitab;
  final String deskripsi;

  IbadahModel({required this.id,required this.judul, required this.pendeta, required this.waktu, required this.tempat, required this.ayatalkitab, required this.deskripsi}); 


  toJson(){
    return {"Id": id,"judul":judul, "pendeta": pendeta, "waktu": waktu, "tempat":tempat, "ayatalkitab": ayatalkitab, "deskripsi": deskripsi};
  }

  factory IbadahModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
    final data = document.data()!;
    return IbadahModel(id: data["Id"] ,judul: data["judul"], pendeta: data["Pendeta"], waktu: data["waktu"], tempat: data["Tempat"], ayatalkitab: data["Ayat_Alkitab"], deskripsi: data["Deskripsi"]);
  }
}

