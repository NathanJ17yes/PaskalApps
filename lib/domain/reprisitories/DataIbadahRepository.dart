import 'package:paskalapps/database/model/IbadahModel.dart';
@override
abstract class DataIbadahRepository {
  Future<List<IbadahModel>> FetchData();
}