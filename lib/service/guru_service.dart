import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app_prjct/model/guru_model.dart';

class GuruService {
  final dio = Dio(BaseOptions(headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  }));
  Future<List> getGuru() async {
    final response = await dio.get(
        "https://pgc7n869-80.asse.devtunnels.ms/Api_pigur/user/view_users.php");
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.data);
      final result = (jsonDecode(response.data) as List<dynamic>)
          .map((e) => GuruModel.fromJson(e))
          .toList();
      return result;
    } else {
      return [];
    }
  }
}
