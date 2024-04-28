import 'package:dio/dio.dart';
import 'package:flutter_app_prjct/model/detail_jadwal_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';

class DetailJadwalService {
  final box = GetStorage();
  final dio = Dio(BaseOptions(headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  }));
  Future<List> getDetailJadwal(String idJampel) async {
    final response = await dio.get(
        "${dotenv.get('BASE_URL')}Api_pigur/user/get-detail-jadwal.php?id_jampel=$idJampel");
    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => DetailJadwalModel.fromJson(e))
          .toList();
      return result;
    } else {
      return [];
    }
  }

  Future<void> insert(
    String idJampel,
    String idKelas,
    String status,
    String mapel,
    String ket,
  ) async {
    await dio.post(
        "${dotenv.get('BASE_URL')}Api_pigur/user/add-detail-jadwal.php",
        data: FormData.fromMap({
          "id_jampel": idJampel,
          "id_kelas": idKelas,
          "id_user": box.read('id'),
          "status": status == "Hadir" ? "1" : "0",
          "mapel": mapel,
          "ket": ket,
        }));
    print("Sudah");
  }
}
