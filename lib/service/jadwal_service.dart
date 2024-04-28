
import 'package:dio/dio.dart';
import 'package:flutter_app_prjct/model/jadwal_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';

class JadwalService {
  final box = GetStorage();
  final dio = Dio(BaseOptions(headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  }));
  Future<List> getListJadwal() async {
    final response = await dio.get(
        "${dotenv.get('BASE_URL')}Api_pigur/user/get-piket.php?id_user=${box.read('id')}");
    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => JadwalModel.fromJson(e))
          .toList();
      return result;
    } else {
      return [];
    }
  }
}
