import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app_prjct/model/mapel_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MapelService {
  final dio = Dio(BaseOptions(headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  }));
  Future<List> getMapel() async {
    final response =
        await dio.get("${dotenv.get('BASE_URL')}Api_pigur/user/get-mapel.php");
    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => MapelModel.fromJson(e))
          .toList();
      return result;
    } else {
      return [];
    }
  }
}
