import 'package:dio/dio.dart';
import 'package:flutter_app_prjct/model/kelas_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class KelasService {
  final dio = Dio(BaseOptions(headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  }));
  Future<List> getKelas() async {
    final response =
        await dio.get("${dotenv.get('BASE_URL')}Api_pigur/user/get-kelas.php");
    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => KelasModel.fromJson(e))
          .toList();
      return result;
    } else {
      return [];
    }
  }
}
