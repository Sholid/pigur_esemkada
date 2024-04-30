import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app_prjct/model/guru_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GuruService {
  final dio = Dio(BaseOptions(headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  }));
  Future<List> getGuru() async {
    final response = await dio.get("${dotenv.get('BASE_URL')}user/view_users.php");
    if (response.statusCode == 200) {
      final result =
          (jsonDecode(response.data) as List<dynamic>).map((e) => GuruModel.fromJson(e)).toList();
      return result;
    } else {
      return [];
    }
  }
}
