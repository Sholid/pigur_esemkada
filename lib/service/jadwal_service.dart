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

  Future<void> insert(String? dateTime1, String? dateTime2, String? dateTime3,
      String? dateTime4, String? dateTime5, List guru) async {
    String tanggal = "";
    if (dateTime1 != null) tanggal += dateTime1.toString() + ";";
    if (dateTime2 != null) tanggal += dateTime2.toString() + ";";
    if (dateTime3 != null) tanggal += dateTime3.toString() + ";";
    if (dateTime4 != null) tanggal += dateTime4.toString() + ";";
    if (dateTime5 != null) tanggal += dateTime5.toString() + ";";
    final response = await dio.post(
      "${dotenv.get('BASE_URL')}Api_pigur/user/addpiket.php",
      data: FormData.fromMap(
        {
          "tanggal": tanggal,
          "guru": guru,
        },
      ),
    );
    print(response);
  }
}
